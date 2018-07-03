import flatpickr from 'flatpickr';

const initDate = function(startDateinput, endDateinput) {
console.log("We are in initDate")
if (startDateinput && endDateinput) {
  console.log("We are in the if")
  flatpickr(startDateinput, {
  minDate: 'today',
  dateFormat: 'd-m-Y',
  onChange: function(_, selectedDate) {
    if (selectedDate === '') {
      return endDateinput.disabled = true;
    }
    endDateCalendar.set('minDate', selectedDate);
    endDateinput.disabled = false;
  }
});
  const endDateCalendar =
    flatpickr(endDateinput, {
      dateFormat: 'd-m-Y',
    });
}
};

export default initDate;
