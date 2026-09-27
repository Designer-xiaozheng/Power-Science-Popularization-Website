package com.project.demo.entity;

import java.sql.Date;
import java.sql.Timestamp;
import com.project.demo.entity.base.BaseEntity;
import java.io.Serializable;
import lombok.*;
import javax.persistence.*;


/**
 * 教师反馈：(TeacherFeedback)表实体类
 *
 */
@Setter
@Getter
@Entity(name = "TeacherFeedback")
public class TeacherFeedback implements Serializable {

    // TeacherFeedback编号
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "teacher_feedback_id")
    private Integer teacher_feedback_id;

    // 教师账号
    @Basic
    private Integer teacher_account;
    // 教师姓名
    @Basic
    private String teachers_name;
    // 教师工号
    @Basic
    private String teacher_id;
    // 学生账号
    @Basic
    private Integer student_account;
    // 学生姓名
    @Basic
    private String student_name;
    // 学生学号
    @Basic
    private String student_id;
    // 学期名称
    @Basic
    private String semester_name;
    // 课程名称
    @Basic
    private String course_name;
    // 班级名称
    @Basic
    private String class_name;
    // 整体评价
    @Basic
    private String overall_evaluation;
    // 评价课程
    @Basic
    private String evaluate_courses;
    // 评价教师
    @Basic
    private String evaluate_teachers;
    // 教师回复
    @Basic
    private String teacher_response;














    // 更新时间
    @Basic
    private Timestamp update_time;

    // 创建时间
    @Basic
    private Timestamp create_time;

}
