
attach("f/one.Rda");
attach("f/two.Rda");
attach("f/three.Rda");
attach("f/four.Rda");

last_wordv <- function(x) {
  r <- vector();
  l <- length(x);
  if ( l == 0 ) {
    return(r)
  }

  for ( i in 1:l ) {
    v_words <- unlist(strsplit(x[i]," +"));    
    r <- c(r,toString(v_words[length(v_words)]));
  } 
  return(r);
}


last_2wordv <- function(x) {
  r <- vector();
  l <- length(x);
  if ( l == 0 ) {
    return(r)
  }

  for ( i in 1:l ) {
    v_words <- unlist(strsplit(x[i]," +"));
    l <- length(v_words);
    r <- c(r,toString(paste(v_words[l - 1], v_words[l] )));
  } 
  return(r);
}



word1 <- function(text_in, n) {
  if ( nchar(text_in) == 0 ) {
    return("No word(s) typed");
  }

  words_v <- unlist(strsplit(text_in," +"));
  words_no <- length(words_v);

  if (words_no == 2) {
    words_s2 <- paste("^", words_v[1], " ", words_v[2], " ", sep="");    
    words_s1 <- paste("^", words_v[2], " ", sep="");    
  }
  else if (words_no > 2) {
    words_s3 <- paste("^", words_v[words_no - 2], " ", words_v[words_no - 1], " ", words_v[words_no], " ", sep="");  
    words_s2 <- paste("^", words_v[words_no - 1], " ", words_v[words_no], " ", sep="");  
    words_s1 <- paste("^", words_v[words_no], " ", sep="");  
  }
  else {
    words_s1 <- paste("^", words_v[1], " ", sep="");
  }

  if (words_no == 1){
    r <- last_wordv(head(t2[grep(words_s1, n2, value = TRUE),]$words, n));
  }
  else if (words_no == 2) {
    r <- last_wordv(head(t3[grep(words_s2, n3, value = TRUE),]$words, n));
    if ( length(r) == 0 ) {
      r <- last_wordv(head(t2[grep(words_s1, n2, value = TRUE),]$words, n));
    }
  }
  else {
    r <- last_wordv(head(t4[grep(words_s3, n4, value = TRUE),]$words, n));
    if ( length(r) == 0 ) {
      r <- last_wordv(head(t3[grep(words_s2, n3, value = TRUE),]$words, n));
      if ( length(r) == 0 ) {
        r <- last_wordv(head(t2[grep(words_s1, n2, value = TRUE),]$words, n));
      }
    }    
  }

  if ( length(r) == 0 ) {
    r <- head(t1$words, n);
  }
  
  return(r);
}



word2 <- function(text_in, n) {
  if ( nchar(text_in) == 0 ) {
    return("No word(s) typed");
  }

  words_v <- unlist(strsplit(text_in," +"));
  words_no <- length(words_v);

  if (words_no >= 2) {
    words_s2 <- paste("^", words_v[words_no - 1], " ", words_v[words_no], " ", sep=""); 
    words_s1 <- paste("^", words_v[words_no], " ", sep=""); 
  }
  else {
    words_s1 <- paste("^", words_v[1], " ", sep="");
  }

 if (words_no >= 2) {
    r <- last_2wordv(head(t4[grep(words_s2, n4, value = TRUE),]$words, n));
    if (length(r) == 0 ) {
       r <- last_2wordv(head(t3[grep(words_s1, n3, value = TRUE),]$words, n));
    }
  }
  else {
    r <- last_2wordv(head(t3[grep(words_s1, n3, value = TRUE),]$words, n));
  }

  if ( length(r) == 0 ) {
    r <- head(t2$words, n);
  }
  
  return(r);
  }
