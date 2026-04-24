#let maketitle(data_file)={
  // Defining a simple function for a title.
  // 
  // This function reads the filename containing the data of the cover.
  // It reads these data from a JSON file.
  // 
  // Said JSON must have these parameters at least:
  // - Title
  // - Author(s)
  // - Date
  
  let data = json(data_file)
  
  set text(size: 20pt)
  set align(center)

  [#data.at("Title")]

  set text(size: 12pt); linebreak()


  [Date: #data.at("Date")]; linebreak()

  // If it's only one author in a string:

  if type(data.at("Author")) == str{

    [Author: #data.at("Author")]

  }
  else if type(data.at("Author")) == array{

    [Authors: ]

    for x in range(0,data.at("Author").len()-1){
      [#data.at("Author").at(x), ]
    }

    [#data.at("Author").last().]
  }


  
}

// Now defining a function for a simply cover.

#let cover(content)={

  v(1fr); content; v(1fr)

  pagebreak()
}