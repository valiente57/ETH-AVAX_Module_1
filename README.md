# Project for demonstration of Error Handling for ETH+VAX Module 1
## Description
### This Solidity contract allows users to schedule a meeting date in the future by validating the input year, month, and date. The contract ensures proper error handling using require, assert, and revert statements.

## Functionality
### Leap Year Validation:
* The contract includes a function to determine whether a given year is a leap year.
* Leap year logic is used to ensure February dates are validated correctly (e.g., February has 29 days in leap years, 28 otherwise).

  The function `isLeapyear()` calculates and checks for leap year and returns a bool value.

### Date Scheduling:

* Allows scheduling a meeting date only for valid future dates.
* Validates the day of the month based on the input year and month.

  The `if-esle{}` condition help to determine the number of days relevant to the month.

### Error Handling:

* Ensures robust input validation using Solidity's require, assert, and revert:

  `assert()`: Confirms that the scheduled date is in the future.
  Done by comparing the values calculated of `currentDate` and `meetingDate `.

  `revert()`: Handles invalid inputs by user for date <= 0.

  `require()`: Ensures the days of month are relevant and in valid range(e.g., 30 days for April, 29 days for February in leap years).
  
### Retrieving the Scheduled Date:
* Has a function `getMeetingDate()` to retrieve the scheduled meeting date in a human-readable format.

## Gettting Started
1. Clone the repository or get the code on any solidity compatible platform of intrest.
2. Compile the contract and deploy.
3. Set the `currentDate` and call the function.
4. Set the values for `meetingDate` and call the funnction if the date entered in the field is relevant(event to set for upcomming or current date) then the meeting will be scheduled.
5. Try changing values for `meetingDate` to verify the error handling of the contract.
