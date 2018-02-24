package com.financial.utils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * 生成加密文件工具
 */
public class MD5Utils {
    public static String getMd5(String code){
        //用于加密的字符串
        char md5String[]={'0', '1', '2', '3', '4', '5', '6',
                '7', '8', '9','A', 'B', 'C', 'D', 'E', 'F'};
        //使用平台的默认字符集将此 String 编码为 byte序列，并将结果存储到一个新的 byte数组中
        byte[] btInput=code.getBytes();
        //信息摘要是安全的单向哈希函数，它接收任意大小的数据，并输出固定长度的哈希值。
        MessageDigest md5 = null;
        try {
            md5 = MessageDigest.getInstance("MD5");

            //MessageDigest对象通过使用 update方法处理数据， 使用指定的byte数组更新摘要
            md5.update(btInput);
            // 摘要更新之后，通过调用digest（）执行哈希计算，获得密文
            byte[] digest = md5.digest();
            // 把密文转换成十六进制的字符串形式
            int j=digest.length;
            int k=0;
            char str[]=new char[j*2];
            for (int i = 0; i < j; i++) {
                byte bytes = digest[i];
                str[k++] = md5String[bytes >>> 4 & 0xf];//每次往前移半个字符，二进制位移
                str[k++] = md5String[bytes & 0xf];
            }
            //返回经过加密后的字符串
            return new String(str);
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        }
    }
}
