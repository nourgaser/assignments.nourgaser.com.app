const { dir } = require("console");
const express = require("express");
const data = require("./data.json");

const app = express();

//Body parsers
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.set("view engine", "ejs");
app.use(express.static("./public"));

app.get("/", (req, res) => {
  res.render("pages/index", {
    data: {
      title: "All Courses",
      courses: data.courses,
    },
  });
});

const error404 = (req, res) => {
  res.render("pages/error", {
    data: {
      title: "404 Not Found",
      back: {
        text: "All Courses",
        link: ``,
      },
    },
  });
};

app.get("/404", error404);

app.get("/:courseID", (req, res) => {
  let course = data.courses.find((e) => e.link === req.params.courseID);
  if (!course) return res.redirect("/404");

  res.render("pages/directories", {
    data: {
      title: course.title,
      course: course,
      back: {
        text: "All Courses",
        link: ``,
      },
    },
  });
});

app.get("/:courseID/:directoryID", (req, res) => {
  let {courseID, directoryID} = req.params;
  let course = data.courses.find((e) => e.link === courseID);
  if (!course) return res.redirect("/404");

  let directory = course.directories.find((e) => e.link === directoryID);
  if (!directory) return res.redirect("/404");

  res.render("pages/directory", {
    data: {
      title: course.title,
      course: course,
      directory: directory,
      back: {
        text: "All Directories",
        link: `${courseID}`,
      },
    },
  });
});


app.get("/*", error404);

app.listen(process.env.PORT || 5000, () => {
  console.log(`Now listening on port ${process.env.PORT || 5000}...`);
});
