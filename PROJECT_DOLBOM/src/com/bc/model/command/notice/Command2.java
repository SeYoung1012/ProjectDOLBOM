package com.bc.model.command.notice;

import java.io.IOException;

import javax.servlet.ServletException;

import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;

public interface Command2 {
	public String exec(MultipartRequest mr, HttpServletResponse response) throws ServletException, IOException;
}
