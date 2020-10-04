CREATE SCHEMA `dingtea` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin ;

--customer

CREATE TABLE `dingtea`.`tblcustomer` (
  `id_user` INT(11) NOT NULL AUTO_INCREMENT,
  `username` NVARCHAR(2083) NOT NULL,
  `phone` NVARCHAR(2083) NOT NULL,
  `address` NVARCHAR(2083) NOT NULL,
  PRIMARY KEY (`id_user`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_bin
COMMENT = 'Khách hàng';


--bill

CREATE TABLE `dingtea`.`tblbill` (
  `id_bill` INT(11) NOT NULL AUTO_INCREMENT,
  `id_product` INT(11) NOT NULL,
  `id_user` INT(11) NOT NULL,
  PRIMARY KEY (`id_bill`),
  INDEX `FK-1customer-Nbill_idx` (`id_user` ASC) VISIBLE,
  CONSTRAINT `FK-1customer-Nbill`
    FOREIGN KEY (`id_user`)
    REFERENCES `dingtea`.`tblcustomer` (`id_user`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_bin
COMMENT = 'Hóa đơn';

--category

CREATE TABLE `dingtea`.`tblcategory` (
  `id_category` INT(11) NOT NULL AUTO_INCREMENT,
  `name_category` NVARCHAR(2083) NOT NULL,
  PRIMARY KEY (`id_category`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_bin
COMMENT = 'Danh mục sản phẩm';


--product
CREATE TABLE `dingtea`.`tblproduct` (
  `id_product` INT(11) NOT NULL AUTO_INCREMENT,
  `name_product` NVARCHAR(2083) NOT NULL,
  `price` NVARCHAR(2083) NOT NULL,
  `id_category` INT(11) NOT NULL,
  `id_bill` INT(11) NULL,
  `id_comment` INT(11) NULL,
  `id_rate` INT(11) NULL,
  `id_attachment` NVARCHAR(2083) NOT NULL,
  PRIMARY KEY (`id_product`),
  INDEX `FK-1category-Nproduct_idx` (`id_category` ASC) VISIBLE,
  CONSTRAINT `FK-1category-Nproduct`
    FOREIGN KEY (`id_category`)
    REFERENCES `dingtea`.`tblcategory` (`id_category`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_bin
COMMENT = 'Danh sách sản phẩm';

INSERT INTO `dingtea`.`tblproduct` (`name_product`, `price`, `id_category`) VALUES ('Hồng Trà', '25000', '1');
INSERT INTO `dingtea`.`tblproduct` (`name_product`, `price`, `id_category`) VALUES ('Trà Nhài', '25000', '1');
INSERT INTO `dingtea`.`tblproduct` (`name_product`, `price`, `id_category`) VALUES ('Trà Ô Long', '25000', '1');
INSERT INTO `dingtea`.`tblproduct` (`name_product`, `price`, `id_category`) VALUES ('Trà đen vị dâu', '32000', '2');
INSERT INTO `dingtea`.`tblproduct` (`name_product`, `price`, `id_category`) VALUES ('Trà xanh vị đào', '32000', '2');
INSERT INTO `dingtea`.`tblproduct` (`name_product`, `price`, `id_category`) VALUES ('Trà đen vị nho', '32000', '2');
INSERT INTO `dingtea`.`tblproduct` (`name_product`, `price`, `id_category`) VALUES ('Trà xanh vị mật ong', '32000', '2');
INSERT INTO `dingtea`.`tblproduct` (`name_product`, `price`, `id_category`) VALUES ('Trà đen vị vải', '32000', '2');
INSERT INTO `dingtea`.`tblproduct` (`name_product`, `price`, `id_category`) VALUES ('Trà xanh vị xoài', '32000', '2');
INSERT INTO `dingtea`.`tblproduct` (`name_product`, `price`, `id_category`) VALUES ('Trà sữa vị đào', '37000', '3');
INSERT INTO `dingtea`.`tblproduct` (`name_product`, `price`, `id_category`) VALUES ('Trà sữa vị dâu', '37000', '3');
INSERT INTO `dingtea`.`tblproduct` (`name_product`, `price`, `id_category`) VALUES ('Trà sữa vị chanh leo', '37000', '3');
INSERT INTO `dingtea`.`tblproduct` (`name_product`, `price`, `id_category`) VALUES ('Trà sữa vị nho', '37000', '3');
INSERT INTO `dingtea`.`tblproduct` (`name_product`, `price`, `id_category`) VALUES ('Trà sữa vị xoài', '37000', '3');
INSERT INTO `dingtea`.`tblproduct` (`name_product`, `price`, `id_category`) VALUES ('Trà sữa vị vải', '37000', '3');
INSERT INTO `dingtea`.`tblproduct` (`name_product`, `price`, `id_category`) VALUES ('Hồng trà sữa', '32000', '4');
INSERT INTO `dingtea`.`tblproduct` (`name_product`, `price`, `id_category`) VALUES ('Trà sữa ô long', '32000', '4');
INSERT INTO `dingtea`.`tblproduct` (`name_product`, `price`, `id_category`) VALUES ('Trà sữa vị nhài', '32000', '4');
INSERT INTO `dingtea`.`tblproduct` (`name_product`, `price`, `id_category`) VALUES ('Trà sữa Hokkaido', '37000', '4');
INSERT INTO `dingtea`.`tblproduct` (`name_product`, `price`, `id_category`) VALUES ('Trà sữa khoai môn', '32000', '4');
INSERT INTO `dingtea`.`tblproduct` (`name_product`, `price`, `id_category`) VALUES ('Trà sữa vani', '37000', '4');
INSERT INTO `dingtea`.`tblproduct` (`name_product`, `price`, `id_category`) VALUES ('Sữa chua uống vị trà xanh', '37000', '5');
INSERT INTO `dingtea`.`tblproduct` (`name_product`, `price`, `id_category`) VALUES ('Sữa chua uống vị dâu', '37000', '5');
INSERT INTO `dingtea`.`tblproduct` (`name_product`, `price`, `id_category`) VALUES ('Sữa chua uống vị xoài', '37000', '5');
INSERT INTO `dingtea`.`tblproduct` (`name_product`, `price`, `id_category`) VALUES ('Socola', '32000', '6');
INSERT INTO `dingtea`.`tblproduct` (`name_product`, `price`, `id_category`) VALUES ('Cafe vị hạt dẻ', '32000', '6');
INSERT INTO `dingtea`.`tblproduct` (`name_product`, `price`, `id_category`) VALUES ('Cafe vị vani', '32000', '6');


--attachment

CREATE TABLE `dingtea`.`tblattachment` (
  `id_attachment` INT(11) NOT NULL AUTO_INCREMENT,
  `name_attachment` NVARCHAR(2083) NULL,
  `id_product` INT(11) NOT NULL,
  PRIMARY KEY (`id_attachment`),
  INDEX `FK-1product-Nattachment_idx` (`id_product` ASC) VISIBLE,
  CONSTRAINT `FK-1product-Nattachment`
    FOREIGN KEY (`id_product`)
    REFERENCES `dingtea`.`tblproduct` (`id_product`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_bin
COMMENT = 'Ảnh minh họa';


--rate

CREATE TABLE `dingtea`.`tblrate` (
  `id_rate` INT NOT NULL AUTO_INCREMENT,
  `rate` FLOAT(11) NOT NULL,
  `id_user` INT(11) NOT NULL,
  `id_product` INT(11) NOT NULL,
  PRIMARY KEY (`id_rate`),
  INDEX `FK-1customer-Nrate_idx` (`id_user` ASC) VISIBLE,
  INDEX `FK-1product-Nrate_idx` (`id_product` ASC) VISIBLE,
  CONSTRAINT `FK-1customer-Nrate`
    FOREIGN KEY (`id_user`)
    REFERENCES `dingtea`.`tblcustomer` (`id_user`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK-1product-Nrate`
    FOREIGN KEY (`id_product`)
    REFERENCES `dingtea`.`tblproduct` (`id_product`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_bin
COMMENT = 'Thang điểm của người dùng cho sản phẩm';


--comment

CREATE TABLE `dingtea`.`tblcomment` (
  `id_comment` INT(11) NOT NULL AUTO_INCREMENT,
  `content` NVARCHAR(2083) NOT NULL,
  `id_user` INT(11) NOT NULL,
  `id_prodcut` INT(11) NOT NULL,
  PRIMARY KEY (`id_comment`),
  INDEX `FK-1customer-Ncomment_idx` (`id_user` ASC) VISIBLE,
  INDEX `FK-1product-Ncomment_idx` (`id_prodcut` ASC) VISIBLE,
  CONSTRAINT `FK-1customer-Ncomment`
    FOREIGN KEY (`id_user`)
    REFERENCES `dingtea`.`tblcustomer` (`id_user`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK-1product-Ncomment`
    FOREIGN KEY (`id_prodcut`)
    REFERENCES `dingtea`.`tblproduct` (`id_product`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_bin
COMMENT = 'Bình luận của khách hàng về sản phẩm';


--product-bill

CREATE TABLE `dingtea`.`tbl_bill_product` (
  `id_bill` INT(11) NOT NULL,
  `id_product` INT(11) NOT NULL,
  PRIMARY KEY (`id_bill`, `id_product`),
  INDEX `FK-1product-Nproduct-bill_idx` (`id_product` ASC) VISIBLE,
  CONSTRAINT `FK-1product-Nproduct-bill`
    FOREIGN KEY (`id_product`)
    REFERENCES `dingtea`.`tblproduct` (`id_product`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK-1bill-Nproduct-bill`
    FOREIGN KEY (`id_bill`)
    REFERENCES `dingtea`.`tblbill` (`id_bill`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_bin
COMMENT = 'Bill vs product';

