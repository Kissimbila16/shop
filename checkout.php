<?php
require_once('header.php');

if (!isset($pdo) || !$pdo instanceof PDO) {
    error_log("PDO connection not available in checkout.php");
    header('location: error.php');
    exit;
}

$banner_checkout = '';
$store_name = 'My Store';
$store_nif = '123456789';

try {
    $statement = $pdo->prepare("SELECT banner_checkout, store_name, store_nif FROM tbl_settings WHERE id = 1");
    $statement->execute();
    $result = $statement->fetch(PDO::FETCH_ASSOC);
    if ($result) {
        $banner_checkout = htmlspecialchars($result['banner_checkout'] ?? '');
        $store_name = htmlspecialchars($result['store_name'] ?? 'My Store');
        $store_nif = htmlspecialchars($result['store_nif'] ?? '123456789');
    }
} catch (PDOException $e) {
    error_log("DB error fetching store settings: " . $e->getMessage());
}

if (!isset($_SESSION['cart_p_id']) || empty($_SESSION['cart_p_id'])) {
    header('location: cart.php');
    exit;
}

$table_total_price = 0;
$cart_items = [];

if (isset($_SESSION['cart_p_id']) && is_array($_SESSION['cart_p_id'])) {
    foreach ($_SESSION['cart_p_id'] as $key => $product_id) {
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

$shipping_cost = 0;
$customer_country_id = $_SESSION['customer']['cust_country'] ?? null;

if ($customer_country_id) {
    try {
        $statement = $pdo->prepare("SELECT amount FROM tbl_shipping_cost WHERE country_id = ?");
        $statement->execute([$customer_country_id]);
        $result = $statement->fetch(PDO::FETCH_ASSOC);
        if ($result) {
            $shipping_cost = (float)$result['amount'];
        } else {
            $statement = $pdo->prepare("SELECT amount FROM tbl_shipping_cost_all WHERE sca_id = 1");
            $statement->execute();
            $result = $statement->fetch(PDO::FETCH_ASSOC);
            if ($result) $shipping_cost = (float)$result['amount'];
        }
    } catch (PDOException $e) {
        error_log("DB error fetching shipping cost: " . $e->getMessage());
    }
}

$final_total = $table_total_price + $shipping_cost;

$payment_method = '';
$purchase_date = '';
$buyer_name = '';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['form1']) || isset($_POST['form3'])) {
        $payment_method = htmlspecialchars($_POST['payment_method'] ?? 'Online');
        $purchase_date = date('Y-m-d H:i:s');
        $buyer_name = htmlspecialchars($_SESSION['customer']['cust_b_name'] ?? 'Cliente');
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

<h3 class="special">Resumo do Pedido</h3>
<div class="cart">
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>#</th><th>Produto</th><th>Nome</th><th>Tamanho</th><th>Cor</th><th>Preço</th><th>Qtd</th><th class="text-right">Sub-total</th>
            </tr>
        </thead>
        <tbody>
            <?php $i=0; foreach ($cart_items as $item): $i++; ?>
            <tr>
                <td><?php echo $i; ?></td>
                <td><img src="assets/uploads/<?php echo $item['featured_photo']; ?>" width="50"></td>
                <td><?php echo $item['name']; ?></td>
                <td><?php echo $item['size_name']; ?></td>
                <td><?php echo $item['color_name']; ?></td>
                <td><?php echo htmlspecialchars(LANG_VALUE_1) . number_format($item['current_price'], 2); ?></td>
                <td><?php echo $item['qty']; ?></td>
                <td class="text-right"><?php echo htmlspecialchars(LANG_VALUE_1) . number_format($item['row_total'], 2); ?></td>
            </tr>
            <?php endforeach; ?>
            <tr><th colspan="7" class="text-right">Total</th><th class="text-right"><?php echo htmlspecialchars(LANG_VALUE_1) . number_format($final_total, 2); ?></th></tr>
        </tbody>
    </table>
</div>

<div id="receipt" style="max-width:600px;margin:20px auto;border:1px solid #ccc;padding:20px;">
    <h1 style="text-align:center;">Recibo da compra</h1>
    <p><strong>Loja:</strong> <?php echo $store_name; ?></p>
    <p><strong>NIF:</strong> <?php echo $store_nif; ?></p>
    <p><strong>Data da compra:</strong> <?php echo $purchase_date ?: date('Y-m-d H:i:s'); ?></p>
    <p><strong>Cliente:</strong> <?php echo $buyer_name ?: htmlspecialchars($_SESSION['customer']['cust_b_name'] ?? 'Cliente'); ?></p>
    <p><strong>Pagamento:</strong> <?php echo $payment_method ?: 'Não informado'; ?></p>

    <table class="table table-bordered">
        <thead>
            <tr><th>#</th><th>Produto</th><th>Tam</th><th>Cor</th><th>Qtd</th><th>Preço</th><th>Sub-total</th></tr>
        </thead>
        <tbody>
            <?php $i=0; foreach ($cart_items as $item): $i++; ?>
            <tr>
                <td><?php echo $i; ?></td>
                <td><?php echo $item['name']; ?></td>
                <td><?php echo $item['size_name']; ?></td>
                <td><?php echo $item['color_name']; ?></td>
                <td><?php echo $item['qty']; ?></td>
                <td><?php echo htmlspecialchars(LANG_VALUE_1) . number_format($item['current_price'], 2); ?></td>
                <td><?php echo htmlspecialchars(LANG_VALUE_1) . number_format($item['row_total'], 2); ?></td>
            </tr>
            <?php endforeach; ?>
            <tr><td colspan="6">Envio</td><td><?php echo htmlspecialchars(LANG_VALUE_1) . number_format($shipping_cost, 2); ?></td></tr>
            <tr><td colspan="6">Total</td><td><?php echo htmlspecialchars(LANG_VALUE_1) . number_format($final_total, 2); ?></td></tr>
        </tbody>
    </table>
</div>

<div style="text-align:center;margin:20px 0;">
    <button onclick="printDiv('receipt')" class="btn btn-info">Imprimir Recibo</button>
    <button onclick="downloadReceiptPdf()" class="btn btn-success">Baixar PDF</button>
</div>

<?php require_once('footer.php'); ?>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.umd.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/1.4.1/html2canvas.min.js"></script>
<script>
function printDiv(divId) {
    var printContents = document.getElementById(divId).innerHTML;
    var originalContents = document.body.innerHTML;

    document.body.innerHTML = printContents;
    window.print();
    document.body.innerHTML = originalContents;
    location.reload();
}

async function downloadReceiptPdf() {
    const { jsPDF } = window.jspdf;
    const element = document.getElementById('receipt');
    const canvas = await html2canvas(element, { scale: 2 });
    const imgData = canvas.toDataURL('image/png');
    const doc = new jsPDF('p', 'mm', 'a4');
    const imgProps = doc.getImageProperties(imgData);
    const pdfWidth = doc.internal.pageSize.getWidth();
    const pdfHeight = (imgProps.height * pdfWidth) / imgProps.width;

    doc.addImage(imgData, 'PNG', 0, 0, pdfWidth, pdfHeight);
    doc.save("recibo.pdf");
}
</script>
