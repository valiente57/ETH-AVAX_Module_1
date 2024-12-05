// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ScheduleMeeting {
    uint public meetingDate;
    uint public currentDate;

    function forcurrentdate(uint cyear, uint cmonth, uint cdate)public {
     currentDate = cyear * 10000 + cmonth * 100 + cdate;
    }

    function isLeapYear(uint year) public pure returns (bool) {
        return (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0);
    }

    function scheduleMeeting(uint year, uint month, uint date) public {
        meetingDate = year * 10000 + month * 100 + date;
        assert(meetingDate>=currentDate);

        if (date <= 0) {
            revert("Meeting cannot be scheduled for the date(0).");
        }

        uint maxDate;
        if (month == 2) {
            bool leap = isLeapYear(year);
            maxDate = leap ? 29 : 28;
        } else if (month == 4 || month == 6 || month == 9 || month == 11) {
            maxDate = 30;
        } else {
            maxDate = 31;
        }

        require(date >= 1 && date <= maxDate, "Invalid date for the given month");
    }

    function getMeetingDate() public view returns (uint year, uint month, uint day) {
        require(meetingDate != 0, "Meeting date is not yet scheduled");

        year = meetingDate / 10000;
        month = (meetingDate / 100) % 100;
        day = meetingDate % 100;
    }
}
