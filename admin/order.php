<?php require_once('header.php'); ?>

<style>
    @media print {
        /* Esconde o cabeçalho, menu lateral, formulário de filtro e outros botões */
        .content-header, 
        .main-header, 
        .main-sidebar,
        .filter-form,
        .no-print,
        .dataTables_filter,
        .dataTables_length,
        .dataTables_info,
        .dataTables_paginate,
        .box-title,
        .content-header-left h1 {
            display: none !important;
        }

        /* Garante que o conteúdo principal ocupe toda a largura */
        .content {
            width: 100%;
            margin: 0;
            padding: 0;
        }

        .box {
            border-top: none !important;
            box-shadow: none !important;
        }
        
        /* Adiciona um título visível apenas na impressão */
        .print-title {
            display: block !important;
            text-align: center;
            font-size: 24px;
            margin-bottom: 20px;
        }
    }
    
    /* Classe para o título que só aparece na impressão */
    .print-title {
        display: none;
    }
</style>

<section class="content-header">
    <div class="content-header-left">
        <h1>Relatório de Vendas</h1>
    </div>
</section>

<section class="content filter-form">
    <div class="row">
        <div class="col-md-12">
            <div class="box box-info">
                <div class="box-body">
                    <form method="GET" action="">
                        <div class="row">
                            <div class="col-sm-3">
                                <div class="form-group">
                                    <label for="start_date">Data de Início:</label>
                                    <input type="date" class="form-control" id="start_date" name="start_date" value="<?php echo isset($_GET['start_date']) ? $_GET['start_date'] : ''; ?>">
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="form-group">
                                    <label for="end_date">Data de Fim:</label>
                                    <input type="date" class="form-control" id="end_date" name="end_date" value="<?php echo isset($_GET['end_date']) ? $_GET['end_date'] : ''; ?>">
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label>&nbsp;</label><br>
                                    <button type="submit" class="btn btn-primary">Filtrar</button>
                                    <a href="order.php" class="btn btn-default">Limpar</a>
                                    <button type="button" class="btn btn-success" onclick="window.print();">
                                        <i class="fa fa-print"></i> Imprimir Relatório
                                    </button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="box box-info">
                <div class="box-body table-responsive">
                    
                    <h2 class="print-title">Relatório de Vendas</h2>

                    <table id="example1" class="table table-bordered table-hover table-striped">
                        <thead>
                            <tr>
                                <th>[ID]</th>
                                <th>Cliente</th>
                                <th>Detalhes do Produto</th>
                                <th>Informação de Pagamento</th>
                                <th>Valor Pago</th>
                                <th>Status do Pagamento</th>
                                <th>Data do Pagamento</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $i = 0;
                            $total_paid = 0;

                            $sql = "SELECT * FROM tbl_payment WHERE 1=1";
                            if (isset($_GET['start_date']) && !empty($_GET['start_date']) && isset($_GET['end_date']) && !empty($_GET['end_date'])) {
                                $sql .= " AND payment_date >= ? AND payment_date <= ?";
                                $statement = $pdo->prepare($sql);
                                $statement->execute([$_GET['start_date'], $_GET['end_date']]);
                            } else {
                                $sql .= " ORDER by id DESC";
                                $statement = $pdo->prepare($sql);
                                $statement->execute();
                            }
                            
                            $result = $statement->fetchAll(PDO::FETCH_ASSOC);

                            foreach ($result as $row) {
                                $i++;
                                $total_paid += $row['paid_amount'];
                            ?>
                                <tr>
                                    <td><?php echo $i; ?></td>
                                    <td>
                                        <b>Nome:</b><br> <?php echo $row['customer_name']; ?><br>
                                        <b>E-mail:</b><br> <?php echo $row['customer_email']; ?>
                                    </td>
                                    <td>
                                        <?php
                                        $statement1 = $pdo->prepare("SELECT * FROM tbl_order WHERE payment_id=?");
                                        $statement1->execute(array($row['payment_id']));
                                        $result1 = $statement1->fetchAll(PDO::FETCH_ASSOC);
                                        foreach ($result1 as $row1) {
                                            echo '<b>Produto:</b> ' . $row1['product_name'];
                                            echo '<br><b>Quantidade:</b> ' . $row1['quantity'];
                                            echo '<br><b>Preço Unitário:</b> $' . $row1['unit_price'];
                                            echo '<br><br>';
                                        }
                                        ?>
                                    </td>
                                    <td>
                                        <b>Método:</b> <?php echo $row['payment_method']; ?><br>
                                        <b>ID da Transação:</b> <?php echo $row['txnid']; ?>
                                    </td>
                                    <td>$<?php echo $row['paid_amount']; ?></td>
                                    <td>
                                        <?php 
                                            if($row['payment_status'] == 'Completed'){
                                                echo '<span class="label label-success" style="font-size:12px;">'.$row['payment_status'].'</span>';
                                            } else {
                                                echo '<span class="label label-danger" style="font-size:12px;">'.$row['payment_status'].'</span>';
                                            }
                                        ?>
                                    </td>
                                    <td><?php echo $row['payment_date']; ?></td>
                                </tr>
                            <?php
                            }
                            ?>
                        </tbody>
                        <tfoot>
                            <tr>
                                <th colspan="4" style="text-align:right;">Total Vendido:</th>
                                <th>$<?php echo number_format($total_paid, 2); ?></th>
                                <th colspan="2" class="no-print"></th> </tr>
                        </tfoot>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>

<?php require_once('footer.php'); ?>