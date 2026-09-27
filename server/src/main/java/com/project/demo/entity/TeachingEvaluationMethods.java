package com.project.demo.entity;

import java.sql.Date;
import java.sql.Timestamp;
import com.project.demo.entity.base.BaseEntity;
import java.io.Serializable;
import lombok.*;
import javax.persistence.*;


/**
 * 评教办法：(TeachingEvaluationMethods)表实体类
 *
 */
@Setter
@Getter
@Entity(name = "TeachingEvaluationMethods")
public class TeachingEvaluationMethods implements Serializable {

    // TeachingEvaluationMethods编号
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "teaching_evaluation_methods_id")
    private Integer teaching_evaluation_methods_id;

    // 课程类型
    @Basic
    private String course_type;
    // 评价样表
    @Basic
    private String evaluation_sample_table;
    // 评价办法
    @Basic
    private String evaluation_method;














    // 更新时间
    @Basic
    private Timestamp update_time;

    // 创建时间
    @Basic
    private Timestamp create_time;

}
