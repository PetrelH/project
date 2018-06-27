package com.petrel.domain;

import lombok.*;

import java.math.BigDecimal;

@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
@ToString
public class Product {
    private Long id;//产品ID
    private String name;//产品名称
    private BigDecimal price;//产品价格
    private Integer num;//产品数量
    private String pictureUrl;//产品图片
    private String model;//产品型号
    private String typr;//产品种类

}
