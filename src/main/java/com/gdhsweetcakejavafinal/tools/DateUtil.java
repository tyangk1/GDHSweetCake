package com.gdhsweetcakejavafinal.tools;

import java.sql.Date;
import java.util.Calendar;

public class DateUtil
{
    public static Date addDays(Date date, int days)
    {
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        cal.add(Calendar.DATE, days); //minus number would decrement the days
        return (Date) cal.getTime();
    }
}
