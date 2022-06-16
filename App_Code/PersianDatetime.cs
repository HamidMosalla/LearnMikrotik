using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Globalization;

/// <summary>
/// Summary description for PersianDatetime
/// </summary>
public class PersianDatetime
{
	public static string GetPersianDatetime()
	{
		PersianCalendar CalendarPer = new PersianCalendar();
		DateTime thisDate = DateTime.Now;
		string PersianDayOfWeek;

		switch (CalendarPer.GetDayOfWeek(thisDate))
		{
			case DayOfWeek.Saturday:
				PersianDayOfWeek = "شنبه";
				break;

			case DayOfWeek.Sunday:
				PersianDayOfWeek = "یکشنبه";
				break;

			case DayOfWeek.Monday:
				PersianDayOfWeek = "دوشنبه";

				break;

			case DayOfWeek.Tuesday:
				PersianDayOfWeek = "سه شنبه";
				break;

			case DayOfWeek.Wednesday:
				PersianDayOfWeek = "چهارشنبه";
				break;

			case DayOfWeek.Thursday:
				PersianDayOfWeek = "پنج شنبه";

				break;

			case DayOfWeek.Friday:
				PersianDayOfWeek = "جمعه";
				break;

			default:
				PersianDayOfWeek = "";
				break;
		}

		string PersianDate = CalendarPer.GetDayOfMonth(thisDate).ToString() + "/" +
							 CalendarPer.GetMonth(thisDate).ToString() + "/" +
							 CalendarPer.GetYear(thisDate).ToString() + " " +
							 CalendarPer.GetHour(thisDate).ToString() + ":" +
							 CalendarPer.GetMinute(thisDate).ToString() + " " + PersianDayOfWeek;
		return PersianDate;
	}
}