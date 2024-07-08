package com.testproj.service;

import com.testproj.Dao.FindStayMemberDAO;
import com.testproj.model.FindStayMember;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;


import javax.servlet.http.HttpSession;
import java.util.List;

@Service
public class FindStayMemberService {
    @Autowired
    private FindStayMemberDAO findStayMemberDao;


    public void register(FindStayMember findStayMember) {
        findStayMemberDao.saveUser(findStayMember);
    }


    public FindStayMember login(String username) {

        return findStayMemberDao.findUser(username);
    }

    public FindStayMember getLoggedInUser(HttpSession session){

                 FindStayMember  sessMem = (FindStayMember) session.getAttribute("findStayMember");
                 if(sessMem!=null){
                     return getUserById(sessMem.getMemId());
                 }
                 return null;
    }

    public void addUser(FindStayMember findStayMember) {
        findStayMemberDao.saveUser(findStayMember);
    }


    public List<FindStayMember> getAllUsers() {
        return findStayMemberDao.getAllUsers();
    }


    public FindStayMember getUserById(long id) {
        return findStayMemberDao.getUserById(id);
    }

    public FindStayMember findMemberByUsername(String username){
        return findStayMemberDao.findUser(username);
    }
    public boolean updateUser(FindStayMember findStayMember) {
        return findStayMemberDao.updateUser(findStayMember);

    }

    public boolean deleteUser(long userId) {
       return findStayMemberDao.deleteUser(userId);
    }

    BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
    public FindStayMember findStayMemberWithEncodePassword(FindStayMember findStayMember){

        findStayMember.setPassword(encoder.encode(findStayMember.getPassword()));
        return findStayMember;
    }

    public boolean isPasswordMatched(String originalPassword,String hashedPassword){
        return encoder.matches(originalPassword, hashedPassword);
    }
}





