<?php
// Inclui o cabeçalho, que deve conter a inicialização da sessão e a conexão PDO.
require_once('header.php');

// Verifica se $pdo está disponível. Se não, exibe um erro ou redireciona.
if (!isset($pdo) || !$pdo instanceof PDO) {
    // Redirecionar para uma página de erro ou exibir uma mensagem
    error_log("PDO connection not available in checkout.php");
    header('location: error.php'); // Ou uma página de erro genérica
    exit;
}

// --- Carregar Configurações da Loja ---
$banner_checkout = '';
$store_name = 'My Store';
$store_nif = '123456789';

try {
    $statement = $pdo->prepare("SELECT banner_checkout, store_name, store_nif FROM tbl_settings WHERE id = 1");
    $statement->execute();
    $result = $statement->fetch(PDO::FETCH_ASSOC); // Usar fetch em vez de fetchAll para uma única linha
    if ($result) {
        $banner_checkout = htmlspecialchars($result['banner_checkout'] ?? '');
        $store_name = htmlspecialchars($result['store_name'] ?? 'My Store');
        $store_nif = htmlspecialchars($result['store_nif'] ?? '123456789');
    }
} catch (PDOException $e) {
    error_log("Database error fetching store settings: " . $e->getMessage());
    // Fallback para valores padrão
}

// --- Redirecionar se o Carrinho Estiver Vazio ---
if (!isset($_SESSION['cart_p_id']) || empty($_SESSION['cart_p_id'])) {
    header('location: cart.php');
    exit;
}

// --- Variáveis de Carrinho e Cálculo de Preços ---
$table_total_price = 0;
$cart_items = []; // Array para armazenar todos os itens do carrinho de forma mais estruturada

// Reorganizar os dados do carrinho para facilitar o acesso e cálculo
if (isset($_SESSION['cart_p_id']) && is_array($_SESSION['cart_p_id'])) {
    foreach ($_SESSION['cart_p_id'] as $key => $product_id) {
        // Garantir que todos os arrays de sessão existam e tenham a mesma chave
        if (isset($_SESSION['cart_p_current_price'][$key]) && isset($_SESSION['cart_p_qty'][$key])) {
            $qty = (int)$_SESSION['cart_p_qty'][$key];
            $price = (float)$_SESSION['cart_p_current_price'][$key];
            $row_total_price = $price * $qty;
            $table_total_price += $row_total_price;

            $cart_items[] = [
                'id' => htmlspecialchars($product_id),
                'size_name' => htmlspecialchars($_SESSION['cart_size_name'][$key] ?? ''),
                'color_name' => htmlspecialchars($_SESSION['cart_color_name'][$key] ?? ''),
                'qty' => $qty,
                'current_price' => $price,
                'name' => htmlspecialchars($_SESSION['cart_p_name'][$key] ?? ''),
                'featured_photo' => htmlspecialchars($_SESSION['cart_p_featured_photo'][$key] ?? ''),
                'row_total' => $row_total_price
            ];
        }
    }
}

// --- Calcular Custo de Envio ---
$shipping_cost = 0;
$customer_country_id = $_SESSION['customer']['cust_country'] ?? null;

if ($customer_country_id) {
    try {
        $statement = $pdo->prepare("SELECT amount FROM tbl_shipping_cost WHERE country_id = ?");
        $statement->execute([$customer_country_id]);
        $result = $statement->fetch(PDO::FETCH_ASSOC);
        if ($result) {
            $shipping_cost = (float)($result['amount'] ?? 0);
        } else {
            // Se não houver custo de envio específico para o país, busca o custo padrão
            $statement = $pdo->prepare("SELECT amount FROM tbl_shipping_cost_all WHERE sca_id = 1");
            $statement->execute();
            $result = $statement->fetch(PDO::FETCH_ASSOC);
            if ($result) {
                $shipping_cost = (float)($result['amount'] ?? 0);
            }
        }
    } catch (PDOException $e) {
        error_log("Database error fetching shipping cost: " . $e->getMessage());
        // Fallback para 0 em caso de erro no banco de dados
        $shipping_cost = 0;
    }
} else {
    // Se não houver país definido para o cliente, busca o custo padrão
    try {
        $statement = $pdo->prepare("SELECT amount FROM tbl_shipping_cost_all WHERE sca_id = 1");
        $statement->execute();
        $result = $statement->fetch(PDO::FETCH_ASSOC);
        if ($result) {
            $shipping_cost = (float)($result['amount'] ?? 0);
        }
    } catch (PDOException $e) {
        error_log("Database error fetching default shipping cost: " . $e->getMessage());
        $shipping_cost = 0;
    }
}

$final_total = $table_total_price + $shipping_cost;

// --- Processar Submissão do Formulário de Pagamento (para exibição dos botões) ---
// Os botões só serão mostrados após a submissão de um dos formulários de pagamento
$show_receipt_buttons = false;
$payment_method = ''; // Inicialize com um valor padrão
$purchase_date = date('Y-m-d H:i:s');
$buyer_name = htmlspecialchars($_SESSION['customer']['cust_b_name'] ?? 'Comprador Desconhecido');

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['form1']) || isset($_POST['form3'])) {
        $show_receipt_buttons = true; // Define como true apenas se um formulário de pagamento for submetido
        $payment_method = htmlspecialchars($_POST['payment_method'] ?? 'Online');
        // A data da compra e o nome do comprador já estão definidos, mas podem ser atualizados aqui se necessário
    }
}
?>

<div class="page-banner" style="background-image: url(assets/uploads/<?php echo $banner_checkout; ?>)">
    <div class="overlay"></div>
    <div class="page-banner-inner">
        <h1><?php echo htmlspecialchars(LANG_VALUE_22); ?></h1>
    </div>
</div>

<div class="page">
    <div class="container">
        <div class="row">
            <div class="col-md-12">

                <?php if (!isset($_SESSION['customer'])): ?>
                    <p>
                        <a href="login.php" class="btn btn-md btn-danger"><?php echo htmlspecialchars(LANG_VALUE_160); ?></a>
                    </p>
                <?php else: ?>

                <h3 class="special"><?php echo htmlspecialchars(LANG_VALUE_26); ?></h3>
                <div class="cart">
                    <table class="table table-responsive table-hover table-bordered">
                        <thead>
                            <tr>
                                <th><?php echo htmlspecialchars('#'); ?></th>
                                <th><?php echo htmlspecialchars(LANG_VALUE_8); ?></th>
                                <th><?php echo htmlspecialchars(LANG_VALUE_47); ?></th>
                                <th><?php echo htmlspecialchars(LANG_VALUE_157); ?></th>
                                <th><?php echo htmlspecialchars(LANG_VALUE_158); ?></th>
                                <th><?php echo htmlspecialchars(LANG_VALUE_159); ?></th>
                                <th><?php echo htmlspecialchars(LANG_VALUE_55); ?></th>
                                <th class="text-right"><?php echo htmlspecialchars(LANG_VALUE_82); ?></th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $i = 0; ?>
                            <?php foreach ($cart_items as $item): ?>
                                <?php $i++; ?>
                                <tr>
                                    <td><?php echo $i; ?></td>
                                    <td>
                                        <img src="assets/uploads/<?php echo $item['featured_photo']; ?>" alt="<?php echo $item['name']; ?>">
                                    </td>
                                    <td><?php echo $item['name']; ?></td>
                                    <td><?php echo $item['size_name']; ?></td>
                                    <td><?php echo $item['color_name']; ?></td>
                                    <td><?php echo htmlspecialchars(LANG_VALUE_1); ?><?php echo number_format($item['current_price'], 2); ?></td>
                                    <td><?php echo $item['qty']; ?></td>
                                    <td class="text-right">
                                        <?php echo htmlspecialchars(LANG_VALUE_1); ?><?php echo number_format($item['row_total'], 2); ?>
                                    </td>
                                </tr>
                            <?php endforeach; ?>
                            <tr>
                                <th colspan="7" class="total-text"><?php echo htmlspecialchars(LANG_VALUE_81); ?></th>
                                <th class="total-amount"><?php echo htmlspecialchars(LANG_VALUE_1); ?><?php echo number_format($table_total_price, 2); ?></th>
                            </tr>
                            <tr>
                                <td colspan="7" class="total-text"><?php echo htmlspecialchars(LANG_VALUE_84); ?></td>
                                <td class="total-amount"><?php echo htmlspecialchars(LANG_VALUE_1); ?><?php echo number_format($shipping_cost, 2); ?></td>
                            </tr>
                            <tr>
                                <th colspan="7" class="total-text"><?php echo htmlspecialchars(LANG_VALUE_82); ?></th>
                                <th class="total-amount">
                                    <?php echo htmlspecialchars(LANG_VALUE_1); ?><?php echo number_format($final_total, 2); ?>
                                </th>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <div class="receipt" id="receipt" style="max-width: 600px; margin: 20px auto; border: 1px solid #ccc; padding: 20px; display: none;">
                    <h1 style="text-align: center;">Recibo da compra</h1>
                    <p><strong>AngoMart:</strong> <?php echo $store_name; ?></p>
                    <p><strong>NIF:</strong> <?php echo $store_nif; ?></p>
                    <p><strong>Data da compra:</strong> <?php echo $purchase_date; ?></p>
                    <p><strong>Nome do cliente:</strong> <?php echo $buyer_name; ?></p>
                    <p><strong>Método de pagamento:</strong> <?php echo $payment_method; ?></p>

                    <table style="width: 100%; border-collapse: collapse; margin-top: 20px;">
                        <thead>
                            <tr>
                                <th style="border: 1px solid #ddd; padding: 8px; background-color: #f2f2f2;">#</th>
                                <th style="border: 1px solid #ddd; padding: 8px; background-color: #f2f2f2;">Produto</th>
                                <th style="border: 1px solid #ddd; padding: 8px; background-color: #f2f2f2;">Tamanho</th>
                                <th style="border: 1px solid #ddd; padding: 8px; background-color: #f2f2f2;">Cor</th>
                                <th style="border: 1px solid #ddd; padding: 8px; background-color: #f2f2f2;">Quantidade</th>
                                <th style="border: 1px solid #ddd; padding: 8px; background-color: #f2f2f2;">Preço</th>
                                <th style="border: 1px solid #ddd; padding: 8px; background-color: #f2f2f2;">Sub-total</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $i = 0; ?>
                            <?php foreach ($cart_items as $item): ?>
                                <?php $i++; ?>
                                <tr>
                                    <td style="border: 1px solid #ddd; padding: 8px;"><?php echo $i; ?></td>
                                    <td style="border: 1px solid #ddd; padding: 8px;"><?php echo $item['name']; ?></td>
                                    <td style="border: 1px solid #ddd; padding: 8px;"><?php echo $item['size_name']; ?></td>
                                    <td style="border: 1px solid #ddd; padding: 8px;"><?php echo $item['color_name']; ?></td>
                                    <td style="border: 1px solid #ddd; padding: 8px;"><?php echo $item['qty']; ?></td>
                                    <td style="border: 1px solid #ddd; padding: 8px;"><?php echo htmlspecialchars(LANG_VALUE_1) . number_format($item['current_price'], 2); ?></td>
                                    <td style="border: 1px solid #ddd; padding: 8px;"><?php echo htmlspecialchars(LANG_VALUE_1) . number_format($item['row_total'], 2); ?></td>
                                </tr>
                            <?php endforeach; ?>
                            <tr>
                                <td colspan="6" style="border: 1px solid #ddd; padding: 8px; font-weight: bold;">Subtotal</td>
                                <td style="border: 1px solid #ddd; padding: 8px;"><?php echo htmlspecialchars(LANG_VALUE_1) . number_format($table_total_price, 2); ?></td>
                            </tr>
                            <tr>
                                <td colspan="6" style="border: 1px solid #ddd; padding: 8px; font-weight: bold;">Shipping Cost</td>
                                <td style="border: 1px solid #ddd; padding: 8px;"><?php echo htmlspecialchars(LANG_VALUE_1) . number_format($shipping_cost, 2); ?></td>
                            </tr>
                            <tr>
                                <td colspan="6" style="border: 1px solid #ddd; padding: 8px; font-weight: bold;">Total</td>
                                <td style="border: 1px solid #ddd; padding: 8px;"><?php echo htmlspecialchars(LANG_VALUE_1) . number_format($final_total, 2); ?></td>
                            </tr>
                        </tbody>
                    </table>
                </div>

        
             

                <div class="clear"></div>
                <h3 class="special"><?php echo htmlspecialchars(LANG_VALUE_33); ?></h3>
                <div class="row">
                    <?php
                    $checkout_access = 1;
                    $customer_billing_info = [
                        'cust_b_name', 'cust_b_cname', 'cust_b_phone', 'cust_b_country',
                        'cust_b_address', 'cust_b_city', 'cust_b_state', 'cust_b_zip'
                    ];
                    $customer_shipping_info = [
                        'cust_s_name', 'cust_s_cname', 'cust_s_phone', 'cust_s_country',
                        'cust_s_address', 'cust_s_city', 'cust_s_state', 'cust_s_zip'
                    ];

                    // Verifica se todas as informações de faturamento e envio estão preenchidas
                    foreach (array_merge($customer_billing_info, $customer_shipping_info) as $field) {
                        if (empty($_SESSION['customer'][$field])) {
                            $checkout_access = 0;
                            break;
                        }
                    }
                    ?>
                    <?php if ($checkout_access == 0): ?>
                        <div class="col-md-12">
                            <div style="color:red;font-size:22px;margin-bottom:50px;">
                                Você deve preencher todas as informações de faturamento e envio no painel do seu painel para finalizar a compra do pedido. Preencha as informações neste <a href="customer-billing-shipping-update.php" style="color:red;text-decoration:underline;">link</a>.
                            </div>
                        </div>
                    <?php else: ?>
                        <div class="col-md-4">
                            <div class="row">
                                <div class="col-md-12 form-group">
                                    <label for=""><?php echo htmlspecialchars(LANG_VALUE_34); ?> *</label>
                                    <select name="payment_method" class="form-control select2" id="advFieldsStatus">
                                        <option value=""><?php echo htmlspecialchars(LANG_VALUE_35); ?></option>
                                        <option value="PayPal"><?php echo htmlspecialchars(LANG_VALUE_36); ?></option>
                                        <option value="Bank Deposit"><?php echo htmlspecialchars(LANG_VALUE_38); ?></option>
                                    </select>
                                </div>

                                <form class="paypal" action="" method="post" id="paypal_form">
                                    <input type="hidden" name="cmd" value="_xclick" />
                                    <input type="hidden" name="no_note" value="1" />
                                    <input type="hidden" name="lc" value="UK" />
                                    <input type="hidden" name="currency_code" value="USD" />
                                    <input type="hidden" name="bn" value="PP-BuyNowBF:btn_buynow_LG.gif:NonHostedGuest" />
                                    <input type="hidden" name="final_total" value="<?php echo number_format($final_total, 2, '.', ''); ?>">
                                    <input type="hidden" name="payment_method" value="PayPal">
                                    <div class="col-md-12 form-group">
                                        <input type="submit" class="btn btn-primary" value="<?php echo htmlspecialchars(LANG_VALUE_46); ?>" name="form1">
                                    </div>
                                </form>

                                <form action="" method="post" id="bank_form">
                                    <input type="hidden" name="amount" value="<?php echo number_format($final_total, 2, '.', ''); ?>">
                                    <input type="hidden" name="payment_method" value="Bank Deposit">
                                    <div class="col-md-12 form-group">
                                        <label for=""><?php echo htmlspecialchars(LANG_VALUE_43); ?></label><br>
                                        <?php
                                        $bank_detail = '';
                                        try {
                                            $statement = $pdo->prepare("SELECT bank_detail FROM tbl_settings WHERE id = 1");
                                            $statement->execute();
                                            $result = $statement->fetch(PDO::FETCH_ASSOC);
                                            if ($result) {
                                                $bank_detail = htmlspecialchars($result['bank_detail'] ?? '');
                                            }
                                        } catch (PDOException $e) {
                                            error_log("Database error fetching bank details: " . $e->getMessage());
                                        }
                                        echo nl2br($bank_detail);
                                        ?>
                                    </div>
                                    <div class="col-md-12 form-group">
                                        <label for=""><?php echo htmlspecialchars(LANG_VALUE_44); ?> <br><span style="font-size:12px;font-weight:normal;">(<?php echo htmlspecialchars(LANG_VALUE_45); ?>)</span></label>
                                        <textarea name="transaction_info" class="form-control" cols="30" rows="10"></textarea>
                                    </div>
                                    <div class="col-md-12 form-group">
                                        <input type="submit" class="btn btn-primary" value="<?php echo htmlspecialchars(LANG_VALUE_46); ?>" name="form3">
                                    </div>
                                </form>
                            </div>
                        </div>

                              
                <div style="margin-top: 20px; text-align: center;">
                    <p>Obrigado pela sua compra!</p>
                    <a href="cart.php" class="btn btn-primary">Continuar a comprar</a>
                    <button onclick="printDiv('receipt')" class="btn btn-info">Imprimir recibo</button>
                    <button onclick="downloadReceiptPdf()" class="btn btn-success">Baixar recibo (PDF)</button>
                </div>
                    <?php endif; ?>
                </div>
                <?php endif; ?>
            </div>
        </div>
    </div>
</div>

<?php require_once('footer.php'); ?>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.umd.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/1.4.1/html2canvas.min.js"></script>
<script>
    // Função para imprimir o recibo usando um iframe temporário
    function printDiv(divId) {
        var printContents = document.getElementById(divId).innerHTML;

        // Criar um iframe oculto
        var iframe = document.createElement('iframe');
        iframe.style.display = 'none';
        document.body.appendChild(iframe);

        var iframeDoc = iframe.contentWindow.document;

        // Abrir o documento do iframe para escrita
        iframeDoc.open();

        // Escrever o HTML completo de um documento no iframe
        // Inclua aqui as tags <head> com o CSS necessário para estilizar o recibo na impressão
        // ATENÇÃO: Você pode precisar ajustar o caminho do seu arquivo CSS principal
        iframeDoc.write('<html><head><title>Recibo de Compra</title>');
        iframeDoc.write('<link rel="stylesheet" href="assets/css/style.css">'); // Exemplo: inclua seu CSS principal
        iframeDoc.write('<style>');
        // Adicione estilos CSS específicos para o recibo na impressão se necessário
        iframeDoc.write('body { font-family: Arial, sans-serif; margin: 20px; color: #333; }');
        iframeDoc.write('.receipt { width: 100%; margin: 0; border: none; padding: 0; }');
        iframeDoc.write('table { width: 100%; border-collapse: collapse; margin-top: 20px; }');
        iframeDoc.write('th, td { border: 1px solid #ddd; padding: 8px; text-align: left; }');
        iframeDoc.write('th { background-color: #f2f2f2; }');
        iframeDoc.write('h1 { text-align: center; color: #333; }');
        iframeDoc.write('p strong { color: #555; }');
        iframeDoc.write('</style>');
        iframeDoc.write('</head><body>');
        iframeDoc.write(printContents); // O conteúdo do div do recibo
        iframeDoc.write('</body></html>');
        // Fechar o documento do iframe
        iframeDoc.close();

        // Esperar o iframe carregar completamente antes de imprimir
        iframe.onload = function() {
            iframe.contentWindow.focus(); // Focar no iframe
            iframe.contentWindow.print(); // Imprimir o conteúdo do iframe
            document.body.removeChild(iframe); // Remover o iframe após a impressão
            location.reload(); // Recarregar a página para restaurar o estado original dos botões
        };
    }

    // Função para baixar o recibo em PDF
    async function downloadReceiptPdf() {
        const { jsPDF } = window.jspdf;
        const element = document.getElementById('receipt');

        // Tornar o recibo visível temporariamente para html2canvas
        element.style.display = 'block';

        // Ajustar o estilo da tabela para quebras de página no PDF
        const tables = element.querySelectorAll('table');
        tables.forEach(table => {
            table.style.pageBreakInside = 'auto';
            table.querySelectorAll('tr').forEach(tr => {
                tr.style.pageBreakInside = 'avoid';
                tr.style.pageBreakAfter = 'auto';
            });
        });

        // Configurações para html2canvas para melhor qualidade
        const canvas = await html2canvas(element, {
            scale: 2, // Aumentar a escala para melhor qualidade
            useCORS: true, // Importante se houver imagens de domínios diferentes
            logging: false // Desativar logs de depuração para produção
        });

        const imgData = canvas.toDataURL('image/png');
        const imgWidth = 210; // A4 width in mm
        const pageHeight = 297; // A4 height in mm
        const imgHeight = canvas.height * imgWidth / canvas.width;
        let heightLeft = imgHeight;

        const doc = new jsPDF('p', 'mm', 'a4');
        let position = 0;

        doc.addImage(imgData, 'PNG', 0, position, imgWidth, imgHeight);
        heightLeft -= pageHeight;

        while (heightLeft >= 0) {
            position = heightLeft - imgHeight;
            doc.addPage();
            doc.addImage(imgData, 'PNG', 0, position, imgWidth, imgHeight);
            heightLeft -= pageHeight;
        }
        doc.save("recibo_compra.pdf");

        // Esconder o recibo novamente após a geração do PDF
        element.style.display = 'none';
    }

    // Lógica para mostrar/esconder formulários de pagamento
    document.addEventListener('DOMContentLoaded', function() {
        const paymentMethodSelect = document.getElementById('advFieldsStatus');
        const paypalForm = document.getElementById('paypal_form');
        const bankForm = document.getElementById('bank_form');

        // Esconder ambos os formulários inicialmente
        paypalForm.style.display = 'none';
        bankForm.style.display = 'none';

        paymentMethodSelect.addEventListener('change', function() {
            paypalForm.style.display = 'none';
            bankForm.style.display = 'none';

            if (this.value === 'PayPal') {
                paypalForm.style.display = 'block';
            } else if (this.value === 'Bank Deposit') {
                bankForm.style.display = 'block';
            }
        });
    });
</script>