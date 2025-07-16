create database if not exists if0_38703792_smart;

use if0_38703792_smart;

DROP TABLE IF EXISTS `tbl_color`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!40101 SET character_set_client = utf8 */
;

CREATE TABLE `tbl_color` (
  `color_id` int(11) NOT NULL AUTO_INCREMENT,
  `color_name` varchar(255) NOT NULL,
  PRIMARY KEY (`color_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 30 DEFAULT CHARSET = latin1 COLLATE = latin1_swedish_ci;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `tbl_color`
--
LOCK TABLES `tbl_color` WRITE;

/*!40000 ALTER TABLE `tbl_color` DISABLE KEYS */
;

INSERT INTO
  `tbl_color`
VALUES
  (1, 'Red'),
(2, 'Black'),
(3, 'Blue'),
(4, 'Yellow'),
(5, 'Green'),
(6, 'White'),
(7, 'Orange'),
(8, 'Brown'),
(9, 'Tan'),
(10, 'Pink'),
(11, 'Mixed'),
(12, 'Lightblue'),
(13, 'Violet'),
(14, 'Light Purple'),
(15, 'Salmon'),
(16, 'Gold'),
(17, 'Gray'),
(18, 'Ash'),
(19, 'Maroon'),
(20, 'Silver'),
(21, 'Dark Clay'),
(22, 'Cognac'),
(23, 'Coffee'),
(24, 'Charcoal'),
(25, 'Navy'),
(26, 'Fuchsia'),
(27, 'Olive'),
(28, 'Burgundy'),
(29, 'Midnight Blue');

/*!40000 ALTER TABLE `tbl_color` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Table structure for table `tbl_country`
--
DROP TABLE IF EXISTS `tbl_country`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!40101 SET character_set_client = utf8 */
;

CREATE TABLE `tbl_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`country_id`)
) ENGINE = MyISAM AUTO_INCREMENT = 2 DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `tbl_country`
--
LOCK TABLES `tbl_country` WRITE;

/*!40000 ALTER TABLE `tbl_country` DISABLE KEYS */
;

INSERT INTO
  `tbl_country`
VALUES
  (1, 'Luanda');

/*!40000 ALTER TABLE `tbl_country` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Table structure for table `tbl_customer`
--
DROP TABLE IF EXISTS `tbl_customer`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!40101 SET character_set_client = utf8 */
;

CREATE TABLE `tbl_customer` (
  `cust_id` int(11) NOT NULL,
  `cust_name` varchar(100) NOT NULL,
  `cust_cname` varchar(100) NOT NULL,
  `cust_email` varchar(100) NOT NULL,
  `cust_phone` varchar(50) NOT NULL,
  `cust_country` int(11) NOT NULL,
  `cust_address` text NOT NULL,
  `cust_city` varchar(100) NOT NULL,
  `cust_state` varchar(100) NOT NULL,
  `cust_zip` varchar(30) NOT NULL,
  `cust_b_name` varchar(100) NOT NULL,
  `cust_b_cname` varchar(100) NOT NULL,
  `cust_b_phone` varchar(50) NOT NULL,
  `cust_b_country` int(11) NOT NULL,
  `cust_b_address` text NOT NULL,
  `cust_b_city` varchar(100) NOT NULL,
  `cust_b_state` varchar(100) NOT NULL,
  `cust_b_zip` varchar(30) NOT NULL,
  `cust_s_name` varchar(100) NOT NULL,
  `cust_s_cname` varchar(100) NOT NULL,
  `cust_s_phone` varchar(50) NOT NULL,
  `cust_s_country` int(11) NOT NULL,
  `cust_s_address` text NOT NULL,
  `cust_s_city` varchar(100) NOT NULL,
  `cust_s_state` varchar(100) NOT NULL,
  `cust_s_zip` varchar(30) NOT NULL,
  `cust_password` varchar(100) NOT NULL,
  `cust_token` varchar(255) NOT NULL,
  `cust_datetime` varchar(100) NOT NULL,
  `cust_timestamp` varchar(100) NOT NULL,
  `cust_status` int(1) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1 COLLATE = latin1_swedish_ci;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `tbl_customer`
--
LOCK TABLES `tbl_customer` WRITE;

/*!40000 ALTER TABLE `tbl_customer` DISABLE KEYS */
;

INSERT INTO
  `tbl_customer`
VALUES
  (
    0,
    'Noe Francisco Joaquim ',
    'Code Only Code',
    'noexcript@gmail.com',
    '937613003',
    1,
    'Casa numero',
    'Luanda',
    'Caso 2',
    '007211362LA043',
    '',
    '',
    '',
    0,
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    0,
    '',
    '',
    '',
    '',
    '25d55ad283aa400af464c76d713c07ad',
    '7f2f6cb1cb8cc638754e5cd91c568462',
    '2023-11-19 09:12:43',
    '1700457163',
    1
  );

/*!40000 ALTER TABLE `tbl_customer` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Table structure for table `tbl_customer_message`
--
DROP TABLE IF EXISTS `tbl_customer_message`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!40101 SET character_set_client = utf8 */
;

CREATE TABLE `tbl_customer_message` (
  `customer_message_id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `order_detail` text NOT NULL,
  `cust_id` int(11) NOT NULL,
  PRIMARY KEY (`customer_message_id`)
) ENGINE = MyISAM AUTO_INCREMENT = 10 DEFAULT CHARSET = latin1 COLLATE = latin1_swedish_ci;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `tbl_customer_message`
--
LOCK TABLES `tbl_customer_message` WRITE;

/*!40000 ALTER TABLE `tbl_customer_message` DISABLE KEYS */
;

INSERT INTO
  `tbl_customer_message`
VALUES
  (
    9,
    'e3',
    'rrr',
    '\nNome do cliente: Jean Collins<br>\nE-mail do cliente: jean@mail.com<br>\nMétodo de pagamento: PayPal<br>\nData do pagamento: 2022-03-20 10:49:53<br>\nDetalhe do pagamento: <br>\nID Transacção: <br>\n        		<br>\nQuantia pago: 91<br>\nEstadod pagamento: Completed<br>\nEstado do frete: Completed<br>\nID do pagamento: 1647798593<br>\n            \n<br><b><u>Productos 1</u></b><br>\nNome do producto: Travelpro Laptop Carry-on Travel Tote Bag<br>\nQuantidade: 1<br>\nPreço unitário: 91<br>\n            ',
    3
  );

/*!40000 ALTER TABLE `tbl_customer_message` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Table structure for table `tbl_end_category`
--
DROP TABLE IF EXISTS `tbl_end_category`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!40101 SET character_set_client = utf8 */
;

CREATE TABLE `tbl_end_category` (
  `ecat_id` int(11) NOT NULL AUTO_INCREMENT,
  `ecat_name` varchar(255) NOT NULL,
  `mcat_id` int(11) NOT NULL,
  PRIMARY KEY (`ecat_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 3 DEFAULT CHARSET = latin1 COLLATE = latin1_swedish_ci;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `tbl_end_category`
--
LOCK TABLES `tbl_end_category` WRITE;

/*!40000 ALTER TABLE `tbl_end_category` DISABLE KEYS */
;

INSERT INTO
  `tbl_end_category`
VALUES
  (1, 'Folhas', 3),
(2, 'Grã', 1);

/*!40000 ALTER TABLE `tbl_end_category` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Table structure for table `tbl_faq`
--
DROP TABLE IF EXISTS `tbl_faq`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!40101 SET character_set_client = utf8 */
;

CREATE TABLE `tbl_faq` (
  `faq_id` int(11) NOT NULL AUTO_INCREMENT,
  `faq_title` varchar(255) NOT NULL,
  `faq_content` text NOT NULL,
  PRIMARY KEY (`faq_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 6 DEFAULT CHARSET = latin1 COLLATE = latin1_swedish_ci;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `tbl_faq`
--
LOCK TABLES `tbl_faq` WRITE;

/*!40000 ALTER TABLE `tbl_faq` DISABLE KEYS */
;

/*!40000 ALTER TABLE `tbl_faq` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Table structure for table `tbl_language`
--
DROP TABLE IF EXISTS `tbl_language`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!40101 SET character_set_client = utf8 */
;

CREATE TABLE `tbl_language` (
  `lang_id` int(11) NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(255) NOT NULL,
  `lang_value` text NOT NULL,
  PRIMARY KEY (`lang_id`)
) ENGINE = MyISAM AUTO_INCREMENT = 164 DEFAULT CHARSET = latin1 COLLATE = latin1_swedish_ci;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `tbl_language`
--
LOCK TABLES `tbl_language` WRITE;

/*!40000 ALTER TABLE `tbl_language` DISABLE KEYS */
;

INSERT INTO
  `tbl_language`
VALUES
  (1, 'Currency', 'AO'),
(2, 'Search Product', 'Pesquisar producto'),
(3, 'Search', 'Pesquisar'),
(4, 'Submit', 'Adicionar'),
(5, 'Update', 'Atualizar'),
(6, 'Read More', 'Ler mais'),
(7, 'Serial', 'Serial'),
(8, 'Photo', 'Foto'),
(9, 'Login', 'Login'),
(10, 'Customer Login', 'Login do Cliente'),
(11, 'Click here to login', 'Clicar para logar'),
(
    12,
    'Back to Login Page',
    'Voltar para página de login'
  ),
(13, 'Logged in as', 'Logoda como'),
(14, 'Logout', 'Sair'),
(15, 'Register', 'Registar'),
(16, 'Customer Registration', 'Registo do Cliente'),
(
    17,
    'Registration Successful',
    'Registro com sucesso'
  ),
(18, 'Cart', 'Cart'),
(19, 'View Cart', 'Ver Cart'),
(20, 'Update Cart', 'Atualizar Cart'),
(21, 'Back to Cart', 'Voltar para Cart'),
(22, 'Checkout', 'Checkout'),
(
    23,
    'Proceed to Checkout',
    'Prosseguir ao Checkout'
  ),
(24, 'Orders', 'Pedidos'),
(25, 'Order History', 'Histórico e Pedidos'),
(26, 'Order Details', 'Detalhes de Pedidos'),
(
    27,
    'Payment Date and Time',
    'Data e hora do pagamentos'
  ),
(28, 'Transaction ID', 'ID da transacção'),
(29, 'Paid Amount', 'Quantia pago'),
(30, 'Payment Status', 'Status de pagamentos'),
(31, 'Payment Method', 'Método de pagamento'),
(32, 'Payment ID', 'ID de pagamento'),
(33, 'Payment Section', 'Secção de Pagameno'),
(
    34,
    'Select Payment Method',
    'Selecione o método de pagamento'
  ),
(35, 'Select a Method', 'Selecione o método'),
(36, 'PayPal', 'PayPal'),
(37, 'Stripe', 'Stripe'),
(38, 'Bank Deposit', 'Deposito bancário'),
(39, 'Card Number', 'Número do cartão'),
(40, 'CVV', 'CVV'),
(41, 'Month', 'Mês'),
(42, 'Year', 'Ano'),
(43, 'Send to this Details', 'Enviar este detalhe'),
(
    44,
    'Transaction Information',
    'Informação da Transação'
  ),
(
    45,
    'Include transaction id and other information correctly',
    'Incluir o ID da transação e outras informações corretamente'
  ),
(46, 'Pay Now', 'Pagar agora'),
(47, 'Product Name', 'Nome do produto'),
(48, 'Product Details', 'Detalhes do produtoc'),
(49, 'Categories', 'Categorias'),
(50, 'Category:', 'Categoria: '),
(
    51,
    'All Products Under',
    'Todos os produtos abaixo'
  ),
(52, 'Select Size', 'Selecione o tamanho'),
(53, 'Select Color', 'Selecione a cor'),
(54, 'Product Price', 'Preço do produto'),
(55, 'Quantity', 'Quantidade'),
(56, 'Out of Stock', 'Fora do stock'),
(57, 'Share This', 'Partilhar'),
(58, 'Share This Product', 'Partilhar este produto'),
(59, 'Product Description', 'Descrição do produto'),
(60, 'Features', 'Características'),
(61, 'Conditions', 'Condições'),
(62, 'Return Policy', 'Política de devolução'),
(63, 'Reviews', 'Reviews'),
(64, 'Review', 'Avaliações'),
(65, 'Give a Review', 'Dê uma avaliação'),
(
    66,
    'Write your comment (Optional)',
    'Escreva seu comentário (Opcional)'
  ),
(
    67,
    'Submit Review',
    'Resultado de tradução Enviar revisão'
  ),
(
    68,
    'You already have given a rating!',
    'Você já deu uma classificação!'
  ),
(
    69,
    'You must have to login to give a review',
    'Você deve fazer login para dar uma avaliação'
  ),
(
    70,
    'No description found',
    'Nenhuma descrição encontrada'
  ),
(
    71,
    'No feature found',
    'Nenhum recurso encontrado'
  ),
(
    72,
    'No condition found',
    'Nenhuma condição encontrada'
  ),
(
    73,
    'No return policy found',
    'Nenhuma política de devolução encontrada'
  ),
(
    74,
    'Review not found',
    'Comentário não encontrado'
  ),
(75, 'Customer Name', 'Nome do Cliente'),
(76, 'Comment', 'Comentário'),
(77, 'Comments', 'Comentários'),
(78, 'Rating', 'Avaliação'),
(79, 'Previous', 'Anterior'),
(80, 'Next', 'Próximo'),
(81, 'Sub Total', 'Subtotal'),
(82, 'Total', 'Total'),
(83, 'Action', 'Operação'),
(84, 'Shipping Cost', 'Frete'),
(85, 'Continue Shopping', 'Continue comprando'),
(
    86,
    'Update Billing Address',
    'Atualizar endereço de cobrança'
  ),
(
    87,
    'Update Shipping Address',
    'Update Shipping Address'
  ),
(
    88,
    'Update Billing and Shipping Info',
    'Atualizar informações de faturamento e envio'
  ),
(89, 'Dashboard', 'Painel de controlo'),
(
    90,
    'Welcome to the Dashboard',
    'Bem-vindo ao painel de controlo'
  ),
(
    91,
    'Back to Dashboard',
    'Voltar ao painel de controlo'
  ),
(92, 'Subscribe', ' Se inscrever'),
(
    93,
    'Subscribe To Our Newsletter',
    'Assine a nossa newsletter'
  ),
(94, 'Email Address', 'Email Address'),
(
    95,
    'Enter Your Email Address',
    'Insira o seu endereço de email'
  ),
(96, 'Password', 'Senha'),
(97, 'Forget Password', 'Esqueceu a senha'),
(98, 'Retype Password', 'Digite novamente a senha'),
(99, 'Update Password', 'Atualizar senha'),
(100, 'New Password', 'Nova senha'),
(
    101,
    'Retype New Password',
    'Digite novamente a nova senha'
  ),
(102, 'Full Name', 'Nome completo'),
(103, 'Company Name', 'Nome da empresa'),
(104, 'Phone Number', 'Número do Telefone'),
(105, 'Address', 'Endreço'),
(106, 'Country', 'Província'),
(107, 'City', 'Cidade'),
(108, 'State', 'Bairro'),
(109, 'Zip Code', 'CEP / NIF'),
(110, 'About Us', 'Sobre'),
(111, 'Featured Posts', 'Featured Posts'),
(112, 'Popular Posts', 'Popular Posts'),
(113, 'Recent Posts', 'Postagens recentes'),
(114, 'Contact Information', 'Contact Information'),
(115, 'Contact Form', 'Contact Form'),
(116, 'Our Office', 'Our Office'),
(117, 'Update Profile', 'Atualizar perfil'),
(118, 'Send Message', 'Send Message'),
(119, 'Message', 'Message'),
(120, 'Find Us On Map', 'Find Us On Map'),
(
    121,
    'Congratulation! Payment is successful.',
    'Parabéns! O pagamento foi realizado com sucesso.'
  ),
(
    122,
    'Billing and Shipping Information is updated successfully.',
    'As informações de cobrança e envio foram atualizadas com sucesso.'
  ),
(
    123,
    'Customer Name can not be empty.',
    'O Nome do Cliente não pode ficar vazio.'
  ),
(
    124,
    'Phone Number can not be empty.',
    'O número de telefone não pode ficar vazio.'
  ),
(
    125,
    'Address can not be empty.',
    'O endereço não pode estar vazio.'
  ),
(
    126,
    'You must have to select a country.',
    'Você deve selecionar um país.'
  ),
(
    127,
    'City can not be empty.',
    'A cidade não pode estar vazia.'
  ),
(
    128,
    'State can not be empty.',
    'O estado não pode estar vazio.'
  ),
(
    129,
    'Zip Code can not be empty.',
    'O CEP / NIP não pode ficar vazio.'
  ),
(
    130,
    'Profile Information is updated successfully.',
    'As informações do perfil foram atualizadas com sucesso.'
  ),
(
    131,
    'Email Address can not be empty',
    'O endereço de e-mail não pode ficar vazio'
  ),
(
    132,
    'Email and/or Password can not be empty.',
    'Email e/ou Senha não podem ficar vazios.'
  ),
(
    133,
    'Email Address does not match.',
    'Endereço de email não corresponde.'
  ),
(
    134,
    'Email address must be valid.',
    'Email address must be valid.'
  ),
(
    135,
    'You email address is not found in our system.',
    'Seu endereço de e-mail não foi encontrado em nosso sistema.'
  ),
(
    136,
    'Please check your email and confirm your subscription.',
    'Verifique seu e-mail e confirme sua assinatura.'
  ),
(
    137,
    'Your email is verified successfully. You can now login to our website.',
    'Seu e-mail foi verificado com sucesso. Agora você pode fazer login em nosso site.'
  ),
(
    138,
    'Password can not be empty.',
    'A senha não pode estar vazia.'
  ),
(
    139,
    'Passwords do not match.',
    'As senhas não coincidem.'
  ),
(
    140,
    'Please enter new and retype passwords.',
    'Insira novas senhas e digite novamente'
  ),
(
    141,
    'Password is updated successfully.',
    'A senha foi atualizada com sucesso.'
  ),
(
    142,
    'To reset your password, please click on the link below.',
    'Para redefinir sua senha, clique no link abaixo.'
  ),
(
    143,
    'PASSWORD RESET REQUEST - YOUR WEBSITE.COM',
    'PEDIDO DE REINICIALIZAÇÃO DE SENHA - SEU SITE.COM.'
  ),
(
    144,
    'The password reset email time (24 hours) has expired. Please again try to reset your password.',
    'O tempo de redefinição de senha do e-mail (24 horas) expirou. Por favor, tente redefinir sua senha novamente.'
  ),
(
    145,
    'A confirmation link is sent to your email address. You will get the password reset information in there.',
    'Desculpe! Sua conta está inativa. Entre em contato com o administrador. A senha foi redefinida com sucesso. Agora você pode fazer login.'
  ),
(
    146,
    'Password is reset successfully. You can now login.',
    'Desculpe! Sua conta está inativa. Entre em contato com o administrador. A senha foi redefinida com sucesso. Agora você pode fazer login.'
  ),
(
    147,
    'Email Address Already Exists',
    'O endereço de e-mail já existe.'
  ),
(
    148,
    'Sorry! Your account is inactive. Please contact to the administrator.',
    'Desculpe! Sua conta está inativa. Entre em contato com o administrador.'
  ),
(149, 'Change Password', 'Alterar a senha'),
(
    150,
    'Registration Email Confirmation for YOUR WEBSITE',
    'Confirmação de e-mail de registro para SEU SITE.'
  ),
(
    151,
    'Thank you for your registration! Your account has been created. To active your account click on the link below:',
    'Obrigado por sua inscrição! Sua conta foi criada. Para ativar sua conta clique no link abaixo:'
  ),
(
    152,
    'Your registration is completed. Please check your email address to follow the process to confirm your registration.',
    'Seu registro foi concluído. Verifique seu endereço de e-mail para seguir o processo de confirmação de seu registro.'
  ),
(
    153,
    'No Product Found',
    'Nenhum producto produto encontrado'
  ),
(154, 'Add to Cart', 'Adiconar ao Cart'),
(155, 'Related Products', 'Produto relacionado'),
(
    156,
    'See all related products from below',
    'Veja todos os produtos relacionados abaixo'
  ),
(157, 'Size', 'Tamanho'),
(158, 'Color', 'Cor'),
(159, 'Price', 'Preço'),
(
    160,
    'Please login as customer to checkout',
    'Por favor loga com cliente para o checkout'
  ),
(161, 'Billing Address', 'Endereço de Cobrança'),
(162, 'Shipping Address', 'Endereço para envio'),
(
    163,
    'Rating is Submitted Successfully!',
    'A avaliação foi enviada com sucesso!'
  );

/*!40000 ALTER TABLE `tbl_language` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Table structure for table `tbl_mid_category`
--
DROP TABLE IF EXISTS `tbl_mid_category`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!40101 SET character_set_client = utf8 */
;

CREATE TABLE `tbl_mid_category` (
  `mcat_id` int(11) NOT NULL AUTO_INCREMENT,
  `mcat_name` varchar(255) NOT NULL,
  `tcat_id` int(11) NOT NULL,
  PRIMARY KEY (`mcat_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 5 DEFAULT CHARSET = latin1 COLLATE = latin1_swedish_ci;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `tbl_mid_category`
--
LOCK TABLES `tbl_mid_category` WRITE;

/*!40000 ALTER TABLE `tbl_mid_category` DISABLE KEYS */
;

INSERT INTO
  `tbl_mid_category`
VALUES
  (1, 'Legumes', 1),
(2, 'Leguminosas', 1),
(3, ' Verduras', 1),
(4, ' Raízes e tubérculos', 1);

/*!40000 ALTER TABLE `tbl_mid_category` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Table structure for table `tbl_order`
--
DROP TABLE IF EXISTS `tbl_order`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!40101 SET character_set_client = utf8 */
;

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `size` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `unit_price` varchar(50) NOT NULL,
  `payment_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 6 DEFAULT CHARSET = latin1 COLLATE = latin1_swedish_ci;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `tbl_order`
--
LOCK TABLES `tbl_order` WRITE;

/*!40000 ALTER TABLE `tbl_order` DISABLE KEYS */
;

/*!40000 ALTER TABLE `tbl_order` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Table structure for table `tbl_page`
--
DROP TABLE IF EXISTS `tbl_page`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!40101 SET character_set_client = utf8 */
;

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `about_title` varchar(255) NOT NULL,
  `about_content` text NOT NULL,
  `about_banner` varchar(255) NOT NULL,
  `about_meta_title` varchar(255) NOT NULL,
  `about_meta_keyword` text NOT NULL,
  `about_meta_description` text NOT NULL,
  `faq_title` varchar(255) NOT NULL,
  `faq_banner` varchar(255) NOT NULL,
  `faq_meta_title` varchar(255) NOT NULL,
  `faq_meta_keyword` text NOT NULL,
  `faq_meta_description` text NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_banner` varchar(255) NOT NULL,
  `blog_meta_title` varchar(255) NOT NULL,
  `blog_meta_keyword` text NOT NULL,
  `blog_meta_description` text NOT NULL,
  `contact_title` varchar(255) NOT NULL,
  `contact_banner` varchar(255) NOT NULL,
  `contact_meta_title` varchar(255) NOT NULL,
  `contact_meta_keyword` text NOT NULL,
  `contact_meta_description` text NOT NULL,
  `pgallery_title` varchar(255) NOT NULL,
  `pgallery_banner` varchar(255) NOT NULL,
  `pgallery_meta_title` varchar(255) NOT NULL,
  `pgallery_meta_keyword` text NOT NULL,
  `pgallery_meta_description` text NOT NULL,
  `vgallery_title` varchar(255) NOT NULL,
  `vgallery_banner` varchar(255) NOT NULL,
  `vgallery_meta_title` varchar(255) NOT NULL,
  `vgallery_meta_keyword` text NOT NULL,
  `vgallery_meta_description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 2 DEFAULT CHARSET = latin1 COLLATE = latin1_swedish_ci;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `tbl_page`
--
LOCK TABLES `tbl_page` WRITE;

/*!40000 ALTER TABLE `tbl_page` DISABLE KEYS */
;

INSERT INTO
  `tbl_page`
VALUES
  (
    1,
    'Sobre',
    '<h4 style=\"border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;\"><u style=\"color: rgb(156, 0, 0); font-weight: bold;\"><span style=\"font-family: Arial;\">QUEM SOMOS</span></u></h4><p style=\"text-align: justify; border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;\">\r\nALICIA F.M - Comercio Geral e Prestação de\r\nservico, Lda, com o NIF: 2401378286 é uma Empresa de direito Angolano, fundada em Fevereiro\r\nde 2013, sediada em Zaire, Município de Mbanza\r\nKongo. Bairro Sagrada Esperança, Rua Kassunta\r\n/Segurança, Zona 1, filiais em Luanda. Exerce\r\nactividades comerciais no segmentos de <span style=\"color: rgb(156, 0, 0); background-color: rgb(239, 239, 239);\">agricultura e transformação de produtos agrícolas.</span></p><p style=\"text-align: justify; border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;\"><span style=\"color: rgb(156, 0, 0); background-color: rgb(239, 239, 239);\"><br></span></p><h4 style=\"margin-top: 1.5rem; margin-bottom: 0px; border: 0px solid;\"><span style=\"color: rgb(156, 0, 0); font-family: Arial; font-weight: 700; text-decoration-line: underline;\">VISÃO</span></h4><p style=\"text-align: justify; border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;\">Ser referência nacional nos segmentos de agricultura, processamento de diferentes tipos de alimentos orgânicos, prestação de serviços, visando\r\no crescimento dos nossos cliente com conduta\r\nde <span style=\"color: rgb(156, 0, 0); background-color: rgb(239, 239, 239);\">trabalho justo, profissional e de responsabilidade social.</span></p><p style=\"text-align: justify; border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;\"><span style=\"color: rgb(156, 0, 0); background-color: rgb(239, 239, 239);\"><br></span></p><h4 style=\"margin-top: 1.5rem; margin-bottom: 0px; border: 0px solid;\"><font color=\"#9c0000\" face=\"Arial\"><b><u>MISSÃO</u></b></font></h4><p style=\"text-align: justify; border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;\">Solidificar uma fiel parceria com os nossos clientes, Pautando num excelente atendimento, fornecendo os nossos serviços com eficiência, e segurança.</p><h4 style=\"color: rgb(0, 0, 0); margin-top: 1.5rem; margin-bottom: 0px; border: 0px solid;\"><font color=\"#9c0000\" face=\"Arial\"><span style=\"font-weight: 700;\"><u><br></u></span></font></h4><h4 style=\"margin-top: 1.5rem; margin-bottom: 0px; border: 0px solid;\"><font color=\"#9c0000\" face=\"Arial\"><b><u>VALORES</u></b></font></h4><p style=\"text-align: justify; border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;\"><span style=\"color: rgb(156, 0, 0);\">Profissionalismo e Eficácia</span>: encaramos os nossos\r\nserviços com profissionalismo. Para tal, possuímos\r\numa equipa com formação adequada para desempenhar com eficácia todos desafios que nos nossos\r\nclientes nos propõem. </p><p style=\"text-align: justify; border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;\"><span style=\"color: rgb(156, 0, 0); background-color: rgb(239, 239, 239);\">Criatividade e Modernidade</span>: Investimos na capacitação continua da nossa equipa, e na qualidade dos nossos produtos. Nossos esforços estão\r\nfocados no futuro produe queremos estar entre as\r\nmelhores e maiores empresas no sector da produção e processamento de alimentos orgânicos\r\nem África.</p><p style=\"text-align: justify; border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;\"><span style=\"color: rgb(156, 0, 0); background-color: rgb(239, 239, 239);\">Qualidade e Satisfação</span>: Levando soluções para\r\ncada actividade que desenvolvemos com qualidade, segurança e menor custo possível. A nossa\r\nproposta é oferecer aos nossos clientes um\r\nmodelo contratual flexível saudável. Proporcionando ao cliente contratar pacotes de serviços ou\r\nprodutos de acordo com suas necessidades\r\ngerando uma economia significativa equiparado  com os  preços  pratica do\r\npelo mercado actual. <br></p><p style=\"text-align: justify; border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;\"><span style=\"color: rgb(156, 0, 0); background-color: rgb(239, 239, 239);\"><br></span><br></p>\r\n',
    'about-banner.png',
    'Don\'Alícia - Sobre',
    'sobre, sobre nós, sobre Don\'Alíca Loja de Alimentos',
    'Solidificar uma fiel parceria com os nossos clientes, Pautando num excelente atendimento, fornecendo ',
    'FAQ',
    'faq-banner.jpg',
    'Don\'Alicia.com-FAQ',
    '',
    '',
    'Blog',
    'blog-banner.jpg',
    'Ecommerce - Blog',
    '',
    '',
    'Contacto',
    'contact-banner.jpg',
    'Fashionys.com - Contact',
    '',
    '',
    'Photo Gallery',
    'pgallery-banner.jpg',
    'Ecommerce - Photo Gallery',
    '',
    '',
    'Video Gallery',
    'vgallery-banner.jpg',
    'Ecommerce - Video Gallery',
    '',
    ''
  );

/*!40000 ALTER TABLE `tbl_page` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Table structure for table `tbl_payment`
--
DROP TABLE IF EXISTS `tbl_payment`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!40101 SET character_set_client = utf8 */
;

CREATE TABLE `tbl_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `payment_date` varchar(50) NOT NULL,
  `txnid` varchar(255) NOT NULL,
  `paid_amount` int(11) NOT NULL,
  `card_number` varchar(50) NOT NULL,
  `card_cvv` varchar(10) NOT NULL,
  `card_month` varchar(10) NOT NULL,
  `card_year` varchar(10) NOT NULL,
  `bank_transaction_info` text NOT NULL,
  `payment_method` varchar(20) NOT NULL,
  `payment_status` varchar(25) NOT NULL,
  `shipping_status` varchar(20) NOT NULL,
  `payment_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = MyISAM AUTO_INCREMENT = 56 DEFAULT CHARSET = latin1 COLLATE = latin1_swedish_ci;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `tbl_payment`
--
LOCK TABLES `tbl_payment` WRITE;

/*!40000 ALTER TABLE `tbl_payment` DISABLE KEYS */
;

/*!40000 ALTER TABLE `tbl_payment` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Table structure for table `tbl_photo`
--
DROP TABLE IF EXISTS `tbl_photo`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!40101 SET character_set_client = utf8 */
;

CREATE TABLE `tbl_photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `caption` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 7 DEFAULT CHARSET = latin1 COLLATE = latin1_swedish_ci;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `tbl_photo`
--
LOCK TABLES `tbl_photo` WRITE;

/*!40000 ALTER TABLE `tbl_photo` DISABLE KEYS */
;

INSERT INTO
  `tbl_photo`
VALUES
  (1, 'Photo 1', 'photo-1.jpg'),
(2, 'Photo 2', 'photo-2.jpg'),
(3, 'Photo 3', 'photo-3.jpg'),
(4, 'Photo 4', 'photo-4.jpg'),
(5, 'Photo 5', 'photo-5.jpg'),
(6, 'Photo 6', 'photo-6.jpg');

/*!40000 ALTER TABLE `tbl_photo` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Table structure for table `tbl_post`
--
DROP TABLE IF EXISTS `tbl_post`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!40101 SET character_set_client = utf8 */
;

CREATE TABLE `tbl_post` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_title` varchar(255) NOT NULL,
  `post_slug` varchar(255) NOT NULL,
  `post_content` text NOT NULL,
  `post_date` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `total_view` int(11) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 12 DEFAULT CHARSET = latin1 COLLATE = latin1_swedish_ci;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `tbl_post`
--
LOCK TABLES `tbl_post` WRITE;

/*!40000 ALTER TABLE `tbl_post` DISABLE KEYS */
;

INSERT INTO
  `tbl_post`
VALUES
  (
    1,
    'Cu vel choro exerci pri et oratio iisque',
    'cu-vel-choro-exerci-pri-et-oratio-iisque',
    '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n',
    '05-09-2017',
    'news-1.jpg',
    3,
    14,
    'Cu vel choro exerci pri et oratio iisque',
    '',
    ''
  ),
(
    2,
    'Epicurei necessitatibus eu facilisi postulant ',
    'epicurei-necessitatibus-eu-facilisi-postulant-',
    '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n',
    '05-09-2017',
    'news-2.jpg',
    3,
    6,
    'Epicurei necessitatibus eu facilisi postulant ',
    '',
    ''
  ),
(
    3,
    'Mei ut errem legimus periculis eos liber',
    'mei-ut-errem-legimus-periculis-eos-liber',
    '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n',
    '05-09-2017',
    'news-3.jpg',
    3,
    1,
    'Mei ut errem legimus periculis eos liber',
    '',
    ''
  ),
(
    4,
    'Id pro unum pertinax oportere vel',
    'id-pro-unum-pertinax-oportere-vel',
    '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n',
    '05-09-2017',
    'news-4.jpg',
    4,
    0,
    'Id pro unum pertinax oportere vel',
    '',
    ''
  ),
(
    5,
    'Tollit cetero cu usu etiam evertitur',
    'tollit-cetero-cu-usu-etiam-evertitur',
    '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n',
    '05-09-2017',
    'news-5.jpg',
    4,
    24,
    'Tollit cetero cu usu etiam evertitur',
    '',
    ''
  ),
(
    6,
    'Omnes ornatus qui et te aeterno',
    'omnes-ornatus-qui-et-te-aeterno',
    '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n',
    '05-09-2017',
    'news-6.jpg',
    4,
    2,
    'Omnes ornatus qui et te aeterno',
    '',
    ''
  ),
(
    7,
    'Vix tale noluisse voluptua ad ne',
    'vix-tale-noluisse-voluptua-ad-ne',
    '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n',
    '05-09-2017',
    'news-7.jpg',
    2,
    0,
    'Vix tale noluisse voluptua ad ne',
    '',
    ''
  ),
(
    8,
    'Liber utroque vim an ne his brute',
    'liber-utroque-vim-an-ne-his-brute',
    '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n',
    '05-09-2017',
    'news-8.jpg',
    2,
    12,
    'Liber utroque vim an ne his brute',
    '',
    ''
  ),
(
    9,
    'Nostrum copiosae argumentum has',
    'nostrum-copiosae-argumentum-has',
    '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n',
    '05-09-2017',
    'news-9.jpg',
    1,
    12,
    'Nostrum copiosae argumentum has',
    '',
    ''
  ),
(
    10,
    'An labores explicari qui eu',
    'an-labores-explicari-qui-eu',
    '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n',
    '05-09-2017',
    'news-10.jpg',
    1,
    4,
    'An labores explicari qui eu',
    '',
    ''
  ),
(
    11,
    'Lorem ipsum dolor sit amet',
    'lorem-ipsum-dolor-sit-amet',
    '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n',
    '05-09-2017',
    'news-11.jpg',
    1,
    18,
    'Lorem ipsum dolor sit amet',
    '',
    ''
  );

/*!40000 ALTER TABLE `tbl_post` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Table structure for table `tbl_product`
--
DROP TABLE IF EXISTS `tbl_product`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!40101 SET character_set_client = utf8 */
;

CREATE TABLE `tbl_product` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_name` varchar(255) NOT NULL,
  `p_old_price` varchar(10) NOT NULL,
  `p_current_price` varchar(10) NOT NULL,
  `p_qty` int(10) NOT NULL,
  `p_featured_photo` varchar(255) NOT NULL,
  `p_description` text NOT NULL,
  `p_short_description` text NOT NULL,
  `p_feature` text NOT NULL,
  `p_condition` text NOT NULL,
  `p_return_policy` text NOT NULL,
  `p_total_view` int(11) NOT NULL,
  `p_is_featured` int(1) NOT NULL,
  `p_is_active` int(1) NOT NULL,
  `ecat_id` int(11) NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 4 DEFAULT CHARSET = latin1 COLLATE = latin1_swedish_ci;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `tbl_product`
--
LOCK TABLES `tbl_product` WRITE;

/*!40000 ALTER TABLE `tbl_product` DISABLE KEYS */
;

INSERT INTO
  `tbl_product`
VALUES
  (
    1,
    'Chá de Bulukuta',
    '00',
    '500.99',
    12,
    'product-featured-1.jpg',
    'Producto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitio',
    '<p>Producto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitio<br></p>',
    '<p>Producto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitio<br></p>',
    '<p>Producto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitio<br></p>',
    '<p>Producto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitioProducto muitio<br></p>',
    43,
    1,
    1,
    1
  ),
(
    2,
    'Paracupas',
    '1230.02',
    '960.99',
    80,
    'product-featured-2.jpg',
    '<p>lorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelore</p>',
    '<p>lorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelore<br></p>',
    '<p>lorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelore<br></p>',
    '<p>lorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelore<br></p>',
    '<p>lorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelorelore<br></p>',
    1,
    1,
    1,
    1
  ),
(
    3,
    'Feijão',
    '960.00',
    '860.98',
    200,
    'product-featured-3.jpg',
    '<p>LOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOre</p>',
    '<p>LOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOre<br></p>',
    '<p>LOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOre<br></p>',
    '',
    '<p>LOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOreLOre<br></p>',
    4,
    1,
    1,
    2
  );

/*!40000 ALTER TABLE `tbl_product` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Table structure for table `tbl_product_color`
--
DROP TABLE IF EXISTS `tbl_product_color`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!40101 SET character_set_client = utf8 */
;

CREATE TABLE `tbl_product_color` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `color_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 272 DEFAULT CHARSET = latin1 COLLATE = latin1_swedish_ci;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `tbl_product_color`
--
LOCK TABLES `tbl_product_color` WRITE;

/*!40000 ALTER TABLE `tbl_product_color` DISABLE KEYS */
;

INSERT INTO
  `tbl_product_color`
VALUES
  (69, 1, 4),
(70, 4, 4),
(77, 6, 6),
(82, 2, 12),
(83, 9, 13),
(84, 3, 14),
(85, 2, 15),
(86, 6, 15),
(87, 3, 16),
(88, 3, 17),
(89, 2, 18),
(90, 3, 19),
(91, 1, 20),
(92, 8, 21),
(93, 2, 22),
(94, 2, 23),
(95, 2, 25),
(96, 5, 26),
(97, 2, 27),
(98, 4, 27),
(99, 5, 28),
(100, 7, 29),
(101, 10, 30),
(102, 11, 31),
(103, 14, 32),
(105, 2, 34),
(106, 1, 35),
(107, 3, 36),
(109, 6, 38),
(110, 2, 39),
(111, 11, 42),
(149, 3, 10),
(150, 6, 9),
(151, 3, 8),
(152, 7, 7),
(159, 2, 77),
(163, 17, 79),
(164, 2, 78),
(167, 3, 80),
(168, 2, 81),
(172, 1, 82),
(173, 2, 82),
(174, 4, 82),
(195, 2, 84),
(201, 2, 86),
(202, 6, 86),
(203, 17, 86),
(222, 16, 93),
(223, 21, 85),
(224, 22, 85),
(225, 23, 85),
(226, 1, 83),
(227, 2, 83),
(228, 3, 83),
(229, 4, 83),
(230, 5, 83),
(231, 6, 83),
(232, 8, 83),
(233, 14, 83),
(234, 17, 83),
(235, 18, 83),
(236, 12, 89),
(237, 27, 91),
(239, 2, 92),
(240, 29, 92),
(241, 2, 88),
(242, 8, 88),
(243, 17, 88),
(244, 2, 90),
(245, 6, 90),
(246, 25, 90),
(247, 27, 90),
(248, 28, 90),
(253, 5, 96),
(254, 24, 96),
(257, 3, 87),
(258, 17, 87),
(261, 25, 97);

/*!40000 ALTER TABLE `tbl_product_color` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Table structure for table `tbl_product_photo`
--
DROP TABLE IF EXISTS `tbl_product_photo`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!40101 SET character_set_client = utf8 */
;

CREATE TABLE `tbl_product_photo` (
  `pp_id` int(11) NOT NULL AUTO_INCREMENT,
  `photo` varchar(255) NOT NULL,
  `p_id` int(11) NOT NULL,
  PRIMARY KEY (`pp_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 133 DEFAULT CHARSET = latin1 COLLATE = latin1_swedish_ci;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `tbl_product_photo`
--
LOCK TABLES `tbl_product_photo` WRITE;

/*!40000 ALTER TABLE `tbl_product_photo` DISABLE KEYS */
;

INSERT INTO
  `tbl_product_photo`
VALUES
  (106, '106.jpg', 83),
(107, '107.jpg', 83),
(108, '108.jpg', 84),
(109, '109.jpg', 84),
(110, '110.jpg', 85),
(111, '111.jpg', 85),
(112, '112.jpg', 86),
(113, '113.jpg', 86),
(114, '114.jpg', 87),
(115, '115.jpg', 87),
(116, '116.jpg', 88),
(117, '117.jpg', 88),
(118, '118.jpg', 89),
(119, '119.jpg', 89),
(120, '120.jpg', 90),
(121, '121.jpg', 91),
(122, '122.jpg', 92),
(123, '123.jpg', 92),
(124, '124.jpg', 93),
(127, '127.jpg', 96),
(128, '128.jpg', 97);

/*!40000 ALTER TABLE `tbl_product_photo` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Table structure for table `tbl_product_size`
--
DROP TABLE IF EXISTS `tbl_product_size`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!40101 SET character_set_client = utf8 */
;

CREATE TABLE `tbl_product_size` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `size_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 448 DEFAULT CHARSET = latin1 COLLATE = latin1_swedish_ci;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `tbl_product_size`
--
LOCK TABLES `tbl_product_size` WRITE;

/*!40000 ALTER TABLE `tbl_product_size` DISABLE KEYS */
;

INSERT INTO
  `tbl_product_size`
VALUES
  (44, 1, 6),
(56, 8, 12),
(57, 9, 12),
(58, 10, 12),
(59, 11, 12),
(60, 12, 12),
(61, 13, 12),
(62, 9, 13),
(63, 11, 13),
(64, 13, 13),
(65, 15, 13),
(66, 9, 14),
(67, 11, 14),
(68, 12, 14),
(69, 13, 14),
(70, 9, 15),
(71, 11, 15),
(72, 13, 15),
(73, 15, 16),
(74, 16, 16),
(75, 17, 16),
(76, 16, 17),
(77, 17, 17),
(78, 14, 18),
(79, 15, 18),
(80, 16, 18),
(81, 17, 18),
(82, 15, 19),
(83, 16, 19),
(84, 17, 19),
(85, 14, 20),
(86, 15, 20),
(87, 17, 20),
(88, 15, 21),
(89, 17, 21),
(90, 15, 22),
(91, 16, 22),
(92, 17, 22),
(93, 15, 23),
(94, 16, 23),
(95, 17, 23),
(96, 18, 25),
(97, 19, 25),
(98, 20, 25),
(99, 21, 25),
(100, 19, 26),
(101, 21, 26),
(102, 22, 26),
(103, 23, 26),
(104, 19, 27),
(105, 20, 27),
(106, 21, 27),
(107, 22, 27),
(108, 19, 28),
(109, 20, 28),
(110, 21, 28),
(111, 19, 29),
(112, 20, 29),
(113, 22, 29),
(114, 1, 30),
(115, 2, 30),
(116, 3, 30),
(117, 4, 30),
(118, 23, 31),
(119, 26, 32),
(123, 2, 34),
(124, 2, 35),
(125, 2, 36),
(126, 3, 36),
(129, 2, 38),
(130, 3, 38),
(131, 4, 38),
(132, 5, 38),
(133, 27, 39),
(134, 8, 42),
(210, 3, 10),
(211, 4, 10),
(212, 5, 10),
(213, 6, 10),
(214, 3, 9),
(215, 4, 9),
(216, 3, 8),
(217, 4, 8),
(218, 2, 7),
(219, 3, 7),
(220, 4, 7),
(249, 1, 79),
(250, 2, 79),
(251, 3, 79),
(252, 1, 78),
(253, 2, 78),
(254, 3, 78),
(255, 4, 78),
(256, 5, 78),
(259, 26, 80),
(262, 3, 82),
(263, 4, 82),
(278, 2, 84),
(279, 3, 84),
(280, 4, 84),
(281, 5, 84),
(282, 6, 84),
(305, 26, 86),
(339, 27, 93),
(340, 15, 85),
(341, 16, 85),
(342, 17, 85),
(343, 18, 85),
(344, 19, 85),
(345, 20, 85),
(346, 21, 85),
(347, 22, 85),
(348, 23, 85),
(349, 24, 85),
(350, 25, 85),
(351, 1, 83),
(352, 2, 83),
(353, 3, 83),
(354, 4, 83),
(355, 5, 83),
(356, 6, 83),
(357, 7, 83),
(358, 3, 89),
(359, 4, 89),
(360, 5, 89),
(361, 6, 89),
(362, 7, 89),
(363, 2, 91),
(364, 3, 91),
(365, 4, 91),
(366, 5, 91),
(367, 6, 91),
(369, 27, 92),
(370, 3, 88),
(371, 4, 88),
(372, 5, 88),
(373, 6, 88),
(374, 7, 88),
(375, 1, 90),
(376, 2, 90),
(377, 3, 90),
(378, 4, 90),
(381, 3, 96),
(382, 4, 96),
(383, 5, 96),
(384, 6, 96),
(385, 7, 96),
(399, 29, 87),
(400, 30, 87),
(401, 31, 87),
(402, 32, 87),
(403, 33, 87),
(404, 34, 87),
(405, 35, 87),
(406, 36, 87),
(407, 37, 87),
(408, 38, 87),
(409, 39, 87),
(418, 8, 97),
(419, 9, 97),
(420, 10, 97),
(421, 11, 97),
(422, 12, 97),
(423, 13, 97),
(424, 14, 97),
(425, 15, 97),
(426, 16, 97),
(427, 17, 97),
(428, 18, 97),
(429, 19, 97);

/*!40000 ALTER TABLE `tbl_product_size` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Table structure for table `tbl_rating`
--
DROP TABLE IF EXISTS `tbl_rating`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!40101 SET character_set_client = utf8 */
;

CREATE TABLE `tbl_rating` (
  `rt_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `rating` int(11) NOT NULL,
  PRIMARY KEY (`rt_id`)
) ENGINE = InnoDB DEFAULT CHARSET = latin1 COLLATE = latin1_swedish_ci;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `tbl_rating`
--
LOCK TABLES `tbl_rating` WRITE;

/*!40000 ALTER TABLE `tbl_rating` DISABLE KEYS */
;

/*!40000 ALTER TABLE `tbl_rating` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Table structure for table `tbl_service`
--
DROP TABLE IF EXISTS `tbl_service`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!40101 SET character_set_client = utf8 */
;

CREATE TABLE `tbl_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `photo` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 11 DEFAULT CHARSET = latin1 COLLATE = latin1_swedish_ci;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `tbl_service`
--
LOCK TABLES `tbl_service` WRITE;

/*!40000 ALTER TABLE `tbl_service` DISABLE KEYS */
;

INSERT INTO
  `tbl_service`
VALUES
  (
    5,
    'Devoluções fáceis',
    'Devolva qualquer item antes de 15 dias!',
    'service-5.png'
  ),
(
    6,
    'Frete grátis',
    'Aproveite frete grátis dentro de Luanda.',
    'service-6.png'
  ),
(
    7,
    'Entrega rápida',
    'Os itens são enviados dentro de 24 horas.',
    'service-7.png'
  ),
(
    8,
    'Satisfação garantida',
    'Garantimos-lhe a nossa satisfação de qualidade.',
    'service-8.png'
  ),
(
    9,
    'Check-out seguro',
    'Fornecendo opções de checkout seguro para todos',
    'service-9.png'
  ),
(
    10,
    'Garantia de devolução de dinheiro',
    'Ofereça garantia de devolução do dinheiro em nossos produtos',
    'service-10.png'
  );

/*!40000 ALTER TABLE `tbl_service` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Table structure for table `tbl_settings`
--
DROP TABLE IF EXISTS `tbl_settings`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!40101 SET character_set_client = utf8 */
;

CREATE TABLE `tbl_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logo` text NOT NULL,
  `favicon` text NOT NULL,
  `footer_about` text NOT NULL,
  `footer_copyright` text NOT NULL,
  `contact_address` text NOT NULL,
  `contact_email` text NOT NULL,
  `contact_phone` text NOT NULL,
  `contact_fax` text NOT NULL,
  `contact_map_iframe` text NOT NULL,
  `receive_email` text NOT NULL,
  `receive_email_subject` text NOT NULL,
  `receive_email_thank_you_message` text NOT NULL,
  `forget_password_message` text NOT NULL,
  `total_recent_post_footer` int(10) NOT NULL,
  `total_popular_post_footer` int(10) NOT NULL,
  `total_recent_post_sidebar` int(11) NOT NULL,
  `total_popular_post_sidebar` int(11) NOT NULL,
  `total_featured_product_home` int(11) NOT NULL,
  `total_latest_product_home` int(11) NOT NULL,
  `total_popular_product_home` int(11) NOT NULL,
  `meta_title_home` text NOT NULL,
  `meta_keyword_home` text NOT NULL,
  `meta_description_home` text NOT NULL,
  `banner_login` text NOT NULL,
  `banner_registration` text NOT NULL,
  `banner_forget_password` text NOT NULL,
  `banner_reset_password` text NOT NULL,
  `banner_search` text NOT NULL,
  `banner_cart` text NOT NULL,
  `banner_checkout` text NOT NULL,
  `banner_product_category` text NOT NULL,
  `banner_blog` text NOT NULL,
  `cta_title` text NOT NULL,
  `cta_content` text NOT NULL,
  `cta_read_more_text` text NOT NULL,
  `cta_read_more_url` text NOT NULL,
  `cta_photo` text NOT NULL,
  `featured_product_title` text NOT NULL,
  `featured_product_subtitle` text NOT NULL,
  `latest_product_title` text NOT NULL,
  `latest_product_subtitle` text NOT NULL,
  `popular_product_title` text NOT NULL,
  `popular_product_subtitle` text NOT NULL,
  `testimonial_title` text NOT NULL,
  `testimonial_subtitle` text NOT NULL,
  `testimonial_photo` text NOT NULL,
  `blog_title` text NOT NULL,
  `blog_subtitle` text NOT NULL,
  `newsletter_text` text NOT NULL,
  `paypal_email` text NOT NULL,
  `stripe_public_key` text NOT NULL,
  `stripe_secret_key` text NOT NULL,
  `bank_detail` text NOT NULL,
  `before_head` text NOT NULL,
  `after_body` text NOT NULL,
  `before_body` text NOT NULL,
  `home_service_on_off` int(11) NOT NULL,
  `home_welcome_on_off` int(11) NOT NULL,
  `home_featured_product_on_off` int(11) NOT NULL,
  `home_latest_product_on_off` int(11) NOT NULL,
  `home_popular_product_on_off` int(11) NOT NULL,
  `home_testimonial_on_off` int(11) NOT NULL,
  `home_blog_on_off` int(11) NOT NULL,
  `newsletter_on_off` int(11) NOT NULL,
  `ads_above_welcome_on_off` int(1) NOT NULL,
  `ads_above_featured_product_on_off` int(1) NOT NULL,
  `ads_above_latest_product_on_off` int(1) NOT NULL,
  `ads_above_popular_product_on_off` int(1) NOT NULL,
  `ads_above_testimonial_on_off` int(1) NOT NULL,
  `ads_category_sidebar_on_off` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 2 DEFAULT CHARSET = latin1 COLLATE = latin1_swedish_ci;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `tbl_settings`
--
LOCK TABLES `tbl_settings` WRITE;

/*!40000 ALTER TABLE `tbl_settings` DISABLE KEYS */
;

INSERT INTO
  `tbl_settings`
VALUES
  (
    1,
    'logo.png',
    'favicon.png',
    '<p>Lorem ipsum dolor sit amet, omnis signiferumque in mei, mei ex enim concludaturque. Senserit salutandi euripidis no per, modus maiestatis scribentur est an.?é?áEa suas pertinax has.</p>\r\n',
    'Copyright ® <script>document.write(new Date().getFullYear())</script> - Devenvolvidor por YIT ',
    'Angola - Zaire - Luanda\r\nZaire mbanza-kongo rua kassunta\r\nLuanda sequele T1 n°45 \r\nLuanda mártires de kifangondo Rua16\r\n',
    'geral@donalicia.com | aliciamaiza@gmail.com',
    '+244 923 241 359 |  +244 924 189 672 ',
    '',
    '',
    'geral@donalicia.com',
    'Mensagem de e-mail do visitante do Don\'Alicia Shopping',
    'Obrigado por enviar e-mail. Entraremos em contato em breve.',
    'Um link de confirmação será enviado para seu endereço de e-mail. Você obterá as informações de redefinição de senha lá.',
    4,
    4,
    5,
    5,
    5,
    6,
    8,
    'DonAlicia-Shopping',
    'Loja Alimentar Online, Produtos agricola, Alimentos em Angola, Compras em Online de Alimentar, Produtos Agrícolas',
    'SOMOS A SOLUÇÃO PARA UMA ALIMENTAÇÃO SAUDÁVEL\r\n\r\nEncaramos os nossos serviços com profissionalismo. Para tal, possuímos uma equipa com formação adequada para desempenhar com eficácia todos desafios que nos nossos clientes nos propõem.\r\n\r\nInvestimos na capacitação continua da nossa equipa, e na qualidade dos nossos produtos. Nossos esforços estão focados no futuro produe queremos estar entre as melhores e maiores empresas no sector da produção e processamento de alimentos orgânicos\r\nem África.\r\n',
    'banner_login.jpg',
    'banner_registration.jpg',
    'banner_forget_password.jpg',
    'banner_reset_password.jpg',
    'banner_search.jpg',
    'banner_cart.jpg',
    'banner_checkout.jpg',
    'banner_product_category.jpg',
    'banner_blog.jpg',
    'Welcome To Our Ecommerce Website',
    'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, \r\nat usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. ',
    'Read More',
    '#',
    'cta.jpg',
    'Produtos em Destaque',
    'Nossa lista dos principais produtos em destaque.',
    'Produtos Mais recentes',
    'Nossa lista de produtos adicionados recentemente',
    'Produtos populares',
    'Produtos populares com base na escolha do cliente',
    'Testimonials',
    'See what our clients tell about us',
    'testimonial.jpg',
    'Latest Blog',
    'See all our latest articles and news from below',
    'Inscreva-se em nossa newsletter para obter as últimas promoções e descontos.',
    'admin@ecom.com',
    'pk_test_0SwMWadgu8DwmEcPdUPRsZ7b',
    'sk_test_TFcsLJ7xxUtpALbDo1L5c1PN',
    'Bank Name: WestView Bank\r\nAccount Number: CA100270589600\r\nBranch Name: CA Branch\r\nCountry: USA',
    '',
    '\r\n',
    '',
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    0,
    1,
    1,
    1,
    1,
    1,
    1
  );

/*!40000 ALTER TABLE `tbl_settings` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Table structure for table `tbl_shipping_cost`
--
DROP TABLE IF EXISTS `tbl_shipping_cost`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!40101 SET character_set_client = utf8 */
;

CREATE TABLE `tbl_shipping_cost` (
  `shipping_cost_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `amount` varchar(20) NOT NULL,
  PRIMARY KEY (`shipping_cost_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 5 DEFAULT CHARSET = latin1 COLLATE = latin1_swedish_ci;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `tbl_shipping_cost`
--
LOCK TABLES `tbl_shipping_cost` WRITE;

/*!40000 ALTER TABLE `tbl_shipping_cost` DISABLE KEYS */
;

INSERT INTO
  `tbl_shipping_cost`
VALUES
  (1, 228, '11'),
(2, 167, '10'),
(3, 13, '8'),
(4, 230, '0');

/*!40000 ALTER TABLE `tbl_shipping_cost` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Table structure for table `tbl_shipping_cost_all`
--
DROP TABLE IF EXISTS `tbl_shipping_cost_all`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!40101 SET character_set_client = utf8 */
;

CREATE TABLE `tbl_shipping_cost_all` (
  `sca_id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` varchar(20) NOT NULL,
  PRIMARY KEY (`sca_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 2 DEFAULT CHARSET = latin1 COLLATE = latin1_swedish_ci;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `tbl_shipping_cost_all`
--
LOCK TABLES `tbl_shipping_cost_all` WRITE;

/*!40000 ALTER TABLE `tbl_shipping_cost_all` DISABLE KEYS */
;

INSERT INTO
  `tbl_shipping_cost_all`
VALUES
  (1, '100');

/*!40000 ALTER TABLE `tbl_shipping_cost_all` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Table structure for table `tbl_size`
--
DROP TABLE IF EXISTS `tbl_size`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!40101 SET character_set_client = utf8 */
;

CREATE TABLE `tbl_size` (
  `size_id` int(11) NOT NULL AUTO_INCREMENT,
  `size_name` varchar(255) NOT NULL,
  PRIMARY KEY (`size_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 48 DEFAULT CHARSET = latin1 COLLATE = latin1_swedish_ci;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `tbl_size`
--
LOCK TABLES `tbl_size` WRITE;

/*!40000 ALTER TABLE `tbl_size` DISABLE KEYS */
;

INSERT INTO
  `tbl_size`
VALUES
  (1, 'XS'),
(2, 'S'),
(3, 'M'),
(4, 'L'),
(5, 'XL'),
(6, 'XXL'),
(7, '3XL'),
(8, '31'),
(9, '32'),
(10, '33'),
(11, '34'),
(12, '35'),
(13, '36'),
(14, '37'),
(15, '38'),
(16, '39'),
(17, '40'),
(18, '41'),
(19, '42'),
(20, '43'),
(21, '44'),
(22, '45'),
(23, '46'),
(24, '47'),
(25, '48'),
(26, 'Free Size'),
(27, 'One Size for All'),
(28, '10'),
(29, '12 Months'),
(30, '2T'),
(31, '3T'),
(32, '4T'),
(33, '5T'),
(34, '6 Years'),
(35, '7 Years'),
(36, '8 Years'),
(37, '10 Years'),
(38, '12 Years'),
(39, '14 Years'),
(40, '256 GB'),
(41, '128 GB'),
(42, '14 Plus'),
(43, '16 Plus'),
(44, '18 Plus'),
(45, '20 Plus'),
(46, '22 Plus'),
(47, '24 Plus');

/*!40000 ALTER TABLE `tbl_size` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Table structure for table `tbl_slider`
--
DROP TABLE IF EXISTS `tbl_slider`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!40101 SET character_set_client = utf8 */
;

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photo` varchar(255) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `button_text` varchar(255) NOT NULL,
  `button_url` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 6 DEFAULT CHARSET = latin1 COLLATE = latin1_swedish_ci;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `tbl_slider`
--
LOCK TABLES `tbl_slider` WRITE;

/*!40000 ALTER TABLE `tbl_slider` DISABLE KEYS */
;

INSERT INTO
  `tbl_slider`
VALUES
  (
    4,
    'slider-4.jpg',
    'SOMOS A SOLUÇÃO PARA UMA ALIMENTAÇÃO SAUDÁVEL',
    'Aonde tudo começa com uma simples alegria e muita dedicaçãoe esforço',
    '',
    '',
    'Left'
  ),
(
    5,
    'slider-5.jpg',
    'SOMOS A SOLUÇÃO PARA UMA ALIMENTAÇÃO SAUDÁVEL',
    'Do Tradicional até a sua casa, como muita força mutua sem parar.',
    '',
    '',
    'Center'
  );

/*!40000 ALTER TABLE `tbl_slider` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Table structure for table `tbl_social`
--
DROP TABLE IF EXISTS `tbl_social`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!40101 SET character_set_client = utf8 */
;

CREATE TABLE `tbl_social` (
  `social_id` int(11) NOT NULL AUTO_INCREMENT,
  `social_name` varchar(30) NOT NULL,
  `social_url` varchar(255) NOT NULL,
  `social_icon` varchar(30) NOT NULL,
  PRIMARY KEY (`social_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 17 DEFAULT CHARSET = latin1 COLLATE = latin1_swedish_ci;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `tbl_social`
--
LOCK TABLES `tbl_social` WRITE;

/*!40000 ALTER TABLE `tbl_social` DISABLE KEYS */
;

INSERT INTO
  `tbl_social`
VALUES
  (
    1,
    'Facebook',
    'http://www.facebook.com/Agroalimentar Dona Alicia ',
    'fa fa-facebook'
  ),
(2, 'Twitter', '', 'fa fa-twitter'),
(3, 'LinkedIn', '', 'fa fa-linkedin'),
(4, 'Google Plus', '', 'fa fa-google-plus'),
(5, 'Pinterest', '', 'fa fa-pinterest'),
(6, 'YouTube', '', 'fa fa-youtube'),
(
    7,
    'Instagram',
    'Agroalimentar Dona Alicia',
    'fa fa-instagram'
  ),
(8, 'Tumblr', '', 'fa fa-tumblr'),
(9, 'Flickr', '', 'fa fa-flickr'),
(10, 'Reddit', '', 'fa fa-reddit'),
(11, 'Snapchat', '', 'fa fa-snapchat'),
(12, 'WhatsApp', '', 'fa fa-whatsapp'),
(13, 'Quora', '', 'fa fa-quora'),
(14, 'StumbleUpon', '', 'fa fa-stumbleupon'),
(15, 'Delicious', '', 'fa fa-delicious'),
(16, 'Digg', '', 'fa fa-digg');

/*!40000 ALTER TABLE `tbl_social` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Table structure for table `tbl_subscriber`
--
DROP TABLE IF EXISTS `tbl_subscriber`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!40101 SET character_set_client = utf8 */
;

CREATE TABLE `tbl_subscriber` (
  `subs_id` int(11) NOT NULL AUTO_INCREMENT,
  `subs_email` varchar(255) NOT NULL,
  `subs_date` varchar(100) NOT NULL,
  `subs_date_time` varchar(100) NOT NULL,
  `subs_hash` varchar(255) NOT NULL,
  `subs_active` int(11) NOT NULL,
  PRIMARY KEY (`subs_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 7 DEFAULT CHARSET = latin1 COLLATE = latin1_swedish_ci;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `tbl_subscriber`
--
LOCK TABLES `tbl_subscriber` WRITE;

/*!40000 ALTER TABLE `tbl_subscriber` DISABLE KEYS */
;

/*!40000 ALTER TABLE `tbl_subscriber` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Table structure for table `tbl_top_category`
--
DROP TABLE IF EXISTS `tbl_top_category`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!40101 SET character_set_client = utf8 */
;

CREATE TABLE `tbl_top_category` (
  `tcat_id` int(11) NOT NULL AUTO_INCREMENT,
  `tcat_name` varchar(255) NOT NULL,
  `show_on_menu` int(1) NOT NULL,
  PRIMARY KEY (`tcat_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 4 DEFAULT CHARSET = latin1 COLLATE = latin1_swedish_ci;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `tbl_top_category`
--
LOCK TABLES `tbl_top_category` WRITE;

/*!40000 ALTER TABLE `tbl_top_category` DISABLE KEYS */
;

INSERT INTO
  `tbl_top_category`
VALUES
  (1, 'Vegetais', 1),
(3, 'Cereais', 1);

/*!40000 ALTER TABLE `tbl_top_category` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Table structure for table `tbl_user`
--
DROP TABLE IF EXISTS `tbl_user`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!40101 SET character_set_client = utf8 */
;

CREATE TABLE `tbl_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `role` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 3 DEFAULT CHARSET = latin1 COLLATE = latin1_swedish_ci;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `tbl_user`
--
LOCK TABLES `tbl_user` WRITE;

/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */
;

INSERT INTO
  `tbl_user`
VALUES
  (
    1,
    'Administrator',
    'admin@mail.com',
    '7777777777',
    '938fbe7d4259fbe710a186f3791c9178',
    'user-1.png',
    'Super Admin',
    'Active'
  ),
(
    2,
    'DonaAlicia',
    'geral@donalicia.com',
    '4444444444',
    'ad5b2e3c03121ec266f74f55e872d225',
    'user-13.jpg',
    'Admin',
    'Active'
  );

/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */
;

UNLOCK TABLES;

--
-- Table structure for table `tbl_video`
--
DROP TABLE IF EXISTS `tbl_video`;

/*!40101 SET @saved_cs_client     = @@character_set_client */
;

/*!40101 SET character_set_client = utf8 */
;

CREATE TABLE `tbl_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `iframe_code` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 5 DEFAULT CHARSET = latin1 COLLATE = latin1_swedish_ci;

/*!40101 SET character_set_client = @saved_cs_client */
;

--
-- Dumping data for table `tbl_video`
--
LOCK TABLES `tbl_video` WRITE;

/*!40000 ALTER TABLE `tbl_video` DISABLE KEYS */
;

INSERT INTO
  `tbl_video`
VALUES
  (
    1,
    'Video 1',
    '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/L3XAFSMdVWU\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'
  ),
(
    2,
    'Video 2',
    '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/sinQ06YzbJI\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'
  ),
(
    4,
    'Video 3',
    '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ViZNgU-Yt-Y\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'
  );

/*!40000 ALTER TABLE `tbl_video` ENABLE KEYS */
;

UNLOCK TABLES;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */
;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */
;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */
;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */
;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */
;

-- Dump completed on 2023-11-20  6:27:59