package controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDAO;
import vo.ProductVO;

public class IndexAction implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
		String url = "/index.jsp";
		ProductDAO productDAO = ProductDAO.getInstance();
		ArrayList<ProductVO> newProductList = null, bestProdcutList = null;
		try {
			newProductList = productDAO.listNewProduct();
//			bestProductList = productDAO.listBestProduct();
		}catch(Exception e) {
			e.printStackTrace();
		}
		request.setAttribute("newProductList", newProductList);
//		request.setAttribute("bestProductList", bestProdcutList);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		}
}
