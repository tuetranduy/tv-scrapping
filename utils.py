from tvDatafeed import Interval


def get_time_interval(time):
    if time == "1min":
        return Interval.in_1_minute
    elif time == "3min":
        return Interval.in_3_minute
    elif time == '5min':
        return Interval.in_5_minute
    elif time == "15min":
        return Interval.in_15_minute
    elif time == "30min":
        return Interval.in_30_minute
    elif time == "45min":
        return Interval.in_45_minute
    elif time == "1hour":
        return Interval.in_1_hour
    elif time == "2hour":
        return Interval.in_2_hour
    elif time == "3hour":
        return Interval.in_3_hour
    elif time == "4hour":
        return Interval.in_4_hour
    elif time == "day":
        return Interval.in_daily
    elif time == "week":
        return Interval.in_weekly
    elif time == "month":
        return Interval.in_monthly
