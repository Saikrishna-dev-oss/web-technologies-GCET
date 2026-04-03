# Web Technologies Lab Programs

A consolidated collection of college Web Technologies lab experiments and supporting practice files.

This repository includes:
- HTML and CSS programs
- JavaScript practice programs
- XML, DTD, XSD examples
- XML parsing programs in Java (SAX/DOM)
- Week-wise and topic-wise lab organization

## Repository Overview

Top-level structure (major folders):

- `Assignment/` - Assignment-oriented web pages and subfolders (including branch/department pages)
- `Attendance/` - Attendance mini-project with HTML, CSS, JavaScript, and XML data
- `classroom/` - XML program files used in classroom exercises
- `gcet_programs/` - Large set of WT practice files (HTML, JS, XML, XSD, DTD, layouts, forms, etc.)
- `javaScript/` - JavaScript-only practical programs
- `lab_programs/` - Lab program set with grouped tasks (`p1` to `p10` and nested parts)
- `week1/`, `week4/`, `week5/`, `week6/`, `week7/`, `week8/`, `week9/` - Week-wise lab work

Also includes a few standalone files in root, such as:
- `demo.html`
- `DropDOwnSelection.html`
- `FormValidation.html`
- `demo.py` (utility/demo script)

## Key Learning Areas Covered

- Basic HTML document structure and formatting tags
- Lists, tables, images, links, frames, and navigation
- CSS: inline, internal, and external stylesheets
- JavaScript basics, DOM interaction, and form validation
- XML creation and validation with DTD/XSD
- Parsing XML using Java parsers (week5)

## How to Run the Programs

### 1. HTML/CSS/JavaScript files

Open any `.html` file directly in a browser:
1. Navigate to the target folder.
2. Double-click the `.html` file (or right-click -> Open With Browser).

For best workflow in VS Code:
- Install Live Server extension.
- Right-click an HTML file -> **Open with Live Server**.

### 2. XML/XSD/DTD files

You can:
- Open XML files in browser/editor for structure preview.
- Use online/offline XML validators to validate against XSD/DTD.

Examples:
- `gcet_programs/bookstore.xml` with `gcet_programs/bookstore.xsd`
- `week4/bookstoreXSD.xml` with `week4/bookstore.xsd`

### 3. Java XML Parser programs (week5)

Folder: `week5/`
- `DParser.java`
- `SAXParserDemo.java`
- `UserHandler.java`
- `input.xml`

Compile and run (from `week5` directory):

```bash
javac *.java
java DParser
java SAXParserDemo
```

Note: Ensure Java (JDK) is installed and available in your system `PATH`.

## Suggested Study Order

1. `week1/` and root basic HTML files
2. `lab_programs/p1` to `p10`
3. `javaScript/` and JS files under `gcet_programs/`
4. XML + DTD/XSD files (`gcet_programs/`, `week4/`)
5. Java XML parsing (`week5/`)

## Maintenance Notes

- File naming style is legacy and course-oriented; retained as-is for lab traceability.
- Some folders contain similarly named programs with minor variations for practice.

## License

This repository is intended for educational/lab use.
