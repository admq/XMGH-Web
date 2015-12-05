package com.xmgh.web;

import java.io.*;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.Date;

/**
 * Created by root on 2015/9/19.
 * @since
 */
public class Table2Domain {
    private Connection connection = null;
    private String packageName = "com.xmgh.web.domain";
    private String url = "jdbc:mysql://localhost:3306/xmgh";
    private String name = "root";
    private String pass = "root";

    public Table2Domain() {
        initProp();
        getConn();
    }

    private void initProp() {
        Properties prop = new Properties();
        try {
            File f = new File(".");
            System.out.println(f.getAbsolutePath());
            prop.load(new FileInputStream("config.properties"));
            url = (String)prop.get("url");
            name = (String)prop.get("name");
            pass = (String)prop.get("pass");
            packageName = (String)prop.get("packageName");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private Connection getConn() {

        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(url, name, pass);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return connection;
    }

    private List readTables() {
        List<Table> tableList = new ArrayList<Table>();
        try {
            DatabaseMetaData metaData = connection.getMetaData();
            ResultSet tables = metaData.getTables(null, null, null, new String[]{"TABLE"});
            while (tables.next()) {

                Table table = new Table();
                String tableName = tables.getString("TABLE_NAME");
                String tableRemarks = tables.getString("REMARKS");
                table.setName(StringUtil.dealTableName(tableName));
                table.setRemarks(tableRemarks);
                ResultSet columns = metaData.getColumns(null, null, tableName, null);

                while (columns.next()) {
                    /*System.out.print("  " + columns.getString("COLUMN_NAME") + "(" + columns.getString("TYPE_NAME") + ")");
                    System.out.println("数据类型是：" + columns.getString("DATA_TYPE"));
                    System.out.println("类型名称是：" + columns.getString("TYPE_NAME"));
                    System.out.println("列大小是：" + columns.getString("COLUMN_SIZE"));
                    System.out.println("注释是："+columns.getString("REMARKS"));*/

                    table.addColumn(columns.getString("COLUMN_NAME"), columns.getString("TYPE_NAME"));

                }

                tableList.add(table);
                //System.out.println("\n- - - - - - - - - - - ");
            }

            tables.close();
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return tableList;
    }

    public void map() {
        List<Table> tableList = readTables();
        int suucess = 0;
        for (Table table : tableList) {
            File file = new File(table.getName()+".java");
            System.out.println("Translate Table : " + table.getName());
            try {
                StringBuffer sbu = new StringBuffer();
                StringBuffer headSbu = new StringBuffer();
                headSbu.append("package " + packageName + ";\n\n");
                sbu.append("\n/**\n");
                sbu.append(" * @author larry\n");
                sbu.append(" * @since " + new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()) + "\n");
                sbu.append(" * " + table.getRemarks() + "\n");
                sbu.append(" */ " + "\n");

                sbu.append("public class " + table.getName() + " {\n");

                //添加属性
                boolean dateFlag = true; //防止多次追加 "import java.util.Date"
                for(String key : table.getColumns().keySet()) {
                    sbu.append("    private " + TypeMap.get(table.getColumns().get(key)) + " " + key + ";\n");
                    if(dateFlag && TypeMap.get(table.getColumns().get(key)).equals("Date")) {
                        headSbu.append("import java.util.Date;\n");
                        dateFlag = false;
                    }
                }

                sbu.append("\n\n");

                //添加getter setter方法
                for(String key : table.getColumns().keySet()) {
                    //getter
                    sbu.append("    public " + TypeMap.get(table.getColumns().get(key)) + " get" + StringUtil.upperCaseStart(key) + "() {\n");
                    sbu.append("        return this." + key + ";\n");
                    sbu.append("    }\n\n");

                    //setter
                    sbu.append("    public void set" + StringUtil.upperCaseStart(key) + "(" + TypeMap.get(table.getColumns().get(key)) + " " + key + ") {\n");
                    sbu.append("        this." + key + "=" + key + ";\n");
                    sbu.append("    }\n\n");

                }

                sbu.append("}");


                FileWriter fileWriter = new FileWriter(file);
                fileWriter.write(headSbu.toString());
                fileWriter.write(sbu.toString());
                fileWriter.flush();
                fileWriter.close();

                suucess++;

            } catch (FileNotFoundException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        System.out.println("- - - - - - - - - - - - - - - - - - - - - ");
        System.out.println("Translate Success Table " + suucess + " !");
    }


}
