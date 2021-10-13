package controller;

import controller.action.Action;
import controller.action.IndexAction;


public class ActionFactory {
	private static ActionFactory instance = new ActionFactory();
	public static ActionFactory getInstance() {
		return instance;
	}
	public Action getAction(String command) {
		Action action = null;
		if(command.equals("index")) {
			action = new IndexAction();
		}
//		else if(command.equals(("index")) {
//			action = new LoginAction();
//		}
//		else if(command.equals(("index")) {
//			action = new JoinForm();
//		}
//		else if(command.equals(("index")) {
//			action = new JoinAction();
//		}
		return action;
	}
}
