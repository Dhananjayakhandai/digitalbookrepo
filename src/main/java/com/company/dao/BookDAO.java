package com.company.dao;

import java.util.List;

import com.entity.BookDtls;
public interface BookDAO {
	
	boolean addBook(BookDtls b);
	
	List<BookDtls> getNewBooks();

	List<BookDtls> getAllBooks();

	boolean updateEditBooks(BookDtls b);

	public boolean deleteBook(int id);
}

