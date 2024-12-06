package com.example;

import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

public class SchedulerJob implements Job {
    @Override
    public void execute(JobExecutionContext context) throws JobExecutionException {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.JAPAN);
        sdf.setTimeZone(TimeZone.getTimeZone("Asia/Tokyo"));
        String message = "ジョブが実行されました: " + sdf.format(new Date());
        System.out.println(message);
    }
}
