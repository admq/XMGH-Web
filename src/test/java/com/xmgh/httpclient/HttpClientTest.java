package com.xmgh.httpclient;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.junit.Test;

import java.io.IOException;

/**
 * Created by larry on 10/11/15.
 */
public class HttpClientTest {

    /**
     * 获取单个Json对象,字符串以 { 开头
     */
    public void getJson() {
        HttpClient httpClient = HttpClients.createDefault();
        try {
            HttpGet httpGet = new HttpGet("http://localhost:8080/article/findByID?id=5");
            HttpResponse response = httpClient.execute(httpGet);
            response.setHeader("Content-Type", "application/json;charset=UTF-8");
            HttpEntity entity = response.getEntity();
            String jsonStr = EntityUtils.toString(entity);

            JSONObject jsonObject = JSONObject.fromObject(jsonStr);
            String content = jsonObject.getString("content");
            System.out.println(content);

        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * 获取Json数组,字符串以 [ 开头
     */
    public void getJsonArray() {
        HttpClient httpClient = HttpClients.createDefault();
        try {
            HttpGet httpGet = new HttpGet("http://localhost:8080/article/getArticles");
            HttpResponse response = httpClient.execute(httpGet);
            response.setHeader("Content-Type", "application/json;charset=UTF-8");
            HttpEntity entity = response.getEntity();
            String jsonStr = EntityUtils.toString(entity);

            JSONArray jsonArray = JSONArray.fromObject(jsonStr);
            for (Object jo : jsonArray) {
                jo = (JSONObject)jo;
                String content = ((JSONObject) jo).getString("content");
                System.out.println(content);
            }

        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Test
    public void test() {
        HttpClientTest ts = new HttpClientTest();
        ts.getJson();
    }
}
