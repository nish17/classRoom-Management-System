const school = Object();

departments["SOT"] = "|ICT|CE|EE|CV|CH|IE|ME";
departments["SPT"] = "|PE";
departments["SPM"] = "|MBA";
departments["SLS"] = "|BABBA|BCOM|BSC";

const departments = Object();

// SOT
departments["ICT"] =
  "|8th SEM|7th SEM|6th SEM|5th SEM|4th SEM|3rd SEM|2nd SEM|1st SEM";
departments["CE"] =
  "|8th SEM|7th SEM|6th SEM|5th SEM|4th SEM|3rd SEM|2nd SEM|1st SEM";
departments["EE"] =
  "|8th SEM|7th SEM|6th SEM|5th SEM|4th SEM|3rd SEM|2nd SEM|1st SEM";
departments["CH"] =
  "|8th SEM|7th SEM|6th SEM|5th SEM|4th SEM|3rd SEM|2nd SEM|1st SEM";
departments["CV"] =
  "|8th SEM|7th SEM|6th SEM|5th SEM|4th SEM|3rd SEM|2nd SEM|1st SEM";
departments["ME"] =
  "|8th SEM|7th SEM|6th SEM|5th SEM|4th SEM|3rd SEM|2nd SEM|1st SEM";
departments["IE"] =
  "|8th SEM|7th SEM|6th SEM|5th SEM|4th SEM|3rd SEM|2nd SEM|1st SEM";

// SPT
departments["PE"] =
  "|8th SEM|7th SEM|6th SEM|5th SEM|4th SEM|3rd SEM|2nd SEM|1st SEM";

// SPM
departments["MBA"] =
  "|8th SEM|7th SEM|6th SEM|5th SEM|4th SEM|3rd SEM|2nd SEM|1st SEM";

// SLS
departments["BABBA"] =
  "|8th SEM|7th SEM|6th SEM|5th SEM|4th SEM|3rd SEM|2nd SEM|1st SEM";
departments["BCOM"] =
  "|8th SEM|7th SEM|6th SEM|5th SEM|4th SEM|3rd SEM|2nd SEM|1st SEM";
departments["BSC"] =
  "|8th SEM|7th SEM|6th SEM|5th SEM|4th SEM|3rd SEM|2nd SEM|1st SEM";

function setSchool() {
  for (school in departments)
    document.write('<option value="' + school + '">' + school + "</option>");
}

function departments(oschoolSel, odepartmentsSel, osemSel) {
  var departmentsArr;
  odepartmentsSel.length = 0;
  osemSel.length = 0;
  var school = oschoolSel.options[oschoolSel.selectedIndex].text;
  if (departments[school]) {
    odepartmentsSel.disabled = false;
    osemSel.disabled = true;
    odepartmentsSel.options[0] = new Option("SELECT DEPARTMENT", "");
    departmentsArr = departments[school].split("|");
    for (var i = 0; i < departmentsArr.length; i++)
      odepartmentsSel.options[i + 1] = new Option(
        departmentsArr[i],
        departmentsArr[i]
      );
    document.getElementById("txtregion").innerHTML = school;
    document.getElementById("txtplacename").innerHTML = "";
  } else odepartmentsSel.disabled = true;
}

function set_years(odepartmentsSel, oyearSel) {
  var yearArr;
  oyearSel.length = 0;
  var departments = odepartmentsSel.options[odepartmentsSel.selectedIndex].text;
  if (year[departments]) {
    oyearSel.disabled = false;
    oyearSel.options[0] = new Option("SELECT YEAR", "");
    yearArr = year[departments].split("|");
    for (var i = 0; i < yearArr.length; i++)
      oyearSel.options[i + 1] = new Option(yearArr[i], yearArr[i]);
    document.getElementById("txtplacename").innerHTML = departments;
  } else oyearSel.disabled = true;
}

function print_years(odepartmentsSel, oyearSel) {
  var departments = odepartmentsSel.options[odepartmentsSel.selectedIndex].text;
  var year = oyearSel.options[oyearSel.selectedIndex].text;
  if (year && year[departments].indexOf(year) != -1)
    document.getElementById("txtplacename").innerHTML =
      year + ", " + departments;
  else document.getElementById("txtplacename").innerHTML = departments;
}
