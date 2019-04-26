package cn.edu.scau.scd.po;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class OrderExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public OrderExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andOdIdIsNull() {
            addCriterion("od_id is null");
            return (Criteria) this;
        }

        public Criteria andOdIdIsNotNull() {
            addCriterion("od_id is not null");
            return (Criteria) this;
        }

        public Criteria andOdIdEqualTo(String value) {
            addCriterion("od_id =", value, "odId");
            return (Criteria) this;
        }

        public Criteria andOdIdNotEqualTo(String value) {
            addCriterion("od_id <>", value, "odId");
            return (Criteria) this;
        }

        public Criteria andOdIdGreaterThan(String value) {
            addCriterion("od_id >", value, "odId");
            return (Criteria) this;
        }

        public Criteria andOdIdGreaterThanOrEqualTo(String value) {
            addCriterion("od_id >=", value, "odId");
            return (Criteria) this;
        }

        public Criteria andOdIdLessThan(String value) {
            addCriterion("od_id <", value, "odId");
            return (Criteria) this;
        }

        public Criteria andOdIdLessThanOrEqualTo(String value) {
            addCriterion("od_id <=", value, "odId");
            return (Criteria) this;
        }

        public Criteria andOdIdLike(String value) {
            addCriterion("od_id like", value, "odId");
            return (Criteria) this;
        }

        public Criteria andOdIdNotLike(String value) {
            addCriterion("od_id not like", value, "odId");
            return (Criteria) this;
        }

        public Criteria andOdIdIn(List<String> values) {
            addCriterion("od_id in", values, "odId");
            return (Criteria) this;
        }

        public Criteria andOdIdNotIn(List<String> values) {
            addCriterion("od_id not in", values, "odId");
            return (Criteria) this;
        }

        public Criteria andOdIdBetween(String value1, String value2) {
            addCriterion("od_id between", value1, value2, "odId");
            return (Criteria) this;
        }

        public Criteria andOdIdNotBetween(String value1, String value2) {
            addCriterion("od_id not between", value1, value2, "odId");
            return (Criteria) this;
        }

        public Criteria andOdStatuIsNull() {
            addCriterion("od_statu is null");
            return (Criteria) this;
        }

        public Criteria andOdStatuIsNotNull() {
            addCriterion("od_statu is not null");
            return (Criteria) this;
        }

        public Criteria andOdStatuEqualTo(Integer value) {
            addCriterion("od_statu =", value, "odStatu");
            return (Criteria) this;
        }

        public Criteria andOdStatuNotEqualTo(Integer value) {
            addCriterion("od_statu <>", value, "odStatu");
            return (Criteria) this;
        }

        public Criteria andOdStatuGreaterThan(Integer value) {
            addCriterion("od_statu >", value, "odStatu");
            return (Criteria) this;
        }

        public Criteria andOdStatuGreaterThanOrEqualTo(Integer value) {
            addCriterion("od_statu >=", value, "odStatu");
            return (Criteria) this;
        }

        public Criteria andOdStatuLessThan(Integer value) {
            addCriterion("od_statu <", value, "odStatu");
            return (Criteria) this;
        }

        public Criteria andOdStatuLessThanOrEqualTo(Integer value) {
            addCriterion("od_statu <=", value, "odStatu");
            return (Criteria) this;
        }

        public Criteria andOdStatuIn(List<Integer> values) {
            addCriterion("od_statu in", values, "odStatu");
            return (Criteria) this;
        }

        public Criteria andOdStatuNotIn(List<Integer> values) {
            addCriterion("od_statu not in", values, "odStatu");
            return (Criteria) this;
        }

        public Criteria andOdStatuBetween(Integer value1, Integer value2) {
            addCriterion("od_statu between", value1, value2, "odStatu");
            return (Criteria) this;
        }

        public Criteria andOdStatuNotBetween(Integer value1, Integer value2) {
            addCriterion("od_statu not between", value1, value2, "odStatu");
            return (Criteria) this;
        }

        public Criteria andOdCreateTimeIsNull() {
            addCriterion("od_create_time is null");
            return (Criteria) this;
        }

        public Criteria andOdCreateTimeIsNotNull() {
            addCriterion("od_create_time is not null");
            return (Criteria) this;
        }

        public Criteria andOdCreateTimeEqualTo(Date value) {
            addCriterion("od_create_time =", value, "odCreateTime");
            return (Criteria) this;
        }

        public Criteria andOdCreateTimeNotEqualTo(Date value) {
            addCriterion("od_create_time <>", value, "odCreateTime");
            return (Criteria) this;
        }

        public Criteria andOdCreateTimeGreaterThan(Date value) {
            addCriterion("od_create_time >", value, "odCreateTime");
            return (Criteria) this;
        }

        public Criteria andOdCreateTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("od_create_time >=", value, "odCreateTime");
            return (Criteria) this;
        }

        public Criteria andOdCreateTimeLessThan(Date value) {
            addCriterion("od_create_time <", value, "odCreateTime");
            return (Criteria) this;
        }

        public Criteria andOdCreateTimeLessThanOrEqualTo(Date value) {
            addCriterion("od_create_time <=", value, "odCreateTime");
            return (Criteria) this;
        }

        public Criteria andOdCreateTimeIn(List<Date> values) {
            addCriterion("od_create_time in", values, "odCreateTime");
            return (Criteria) this;
        }

        public Criteria andOdCreateTimeNotIn(List<Date> values) {
            addCriterion("od_create_time not in", values, "odCreateTime");
            return (Criteria) this;
        }

        public Criteria andOdCreateTimeBetween(Date value1, Date value2) {
            addCriterion("od_create_time between", value1, value2, "odCreateTime");
            return (Criteria) this;
        }

        public Criteria andOdCreateTimeNotBetween(Date value1, Date value2) {
            addCriterion("od_create_time not between", value1, value2, "odCreateTime");
            return (Criteria) this;
        }

        public Criteria andOdPayTimeIsNull() {
            addCriterion("od_pay_time is null");
            return (Criteria) this;
        }

        public Criteria andOdPayTimeIsNotNull() {
            addCriterion("od_pay_time is not null");
            return (Criteria) this;
        }

        public Criteria andOdPayTimeEqualTo(Date value) {
            addCriterion("od_pay_time =", value, "odPayTime");
            return (Criteria) this;
        }

        public Criteria andOdPayTimeNotEqualTo(Date value) {
            addCriterion("od_pay_time <>", value, "odPayTime");
            return (Criteria) this;
        }

        public Criteria andOdPayTimeGreaterThan(Date value) {
            addCriterion("od_pay_time >", value, "odPayTime");
            return (Criteria) this;
        }

        public Criteria andOdPayTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("od_pay_time >=", value, "odPayTime");
            return (Criteria) this;
        }

        public Criteria andOdPayTimeLessThan(Date value) {
            addCriterion("od_pay_time <", value, "odPayTime");
            return (Criteria) this;
        }

        public Criteria andOdPayTimeLessThanOrEqualTo(Date value) {
            addCriterion("od_pay_time <=", value, "odPayTime");
            return (Criteria) this;
        }

        public Criteria andOdPayTimeIn(List<Date> values) {
            addCriterion("od_pay_time in", values, "odPayTime");
            return (Criteria) this;
        }

        public Criteria andOdPayTimeNotIn(List<Date> values) {
            addCriterion("od_pay_time not in", values, "odPayTime");
            return (Criteria) this;
        }

        public Criteria andOdPayTimeBetween(Date value1, Date value2) {
            addCriterion("od_pay_time between", value1, value2, "odPayTime");
            return (Criteria) this;
        }

        public Criteria andOdPayTimeNotBetween(Date value1, Date value2) {
            addCriterion("od_pay_time not between", value1, value2, "odPayTime");
            return (Criteria) this;
        }

        public Criteria andOdConsignTimeIsNull() {
            addCriterion("od_consign_time is null");
            return (Criteria) this;
        }

        public Criteria andOdConsignTimeIsNotNull() {
            addCriterion("od_consign_time is not null");
            return (Criteria) this;
        }

        public Criteria andOdConsignTimeEqualTo(Date value) {
            addCriterion("od_consign_time =", value, "odConsignTime");
            return (Criteria) this;
        }

        public Criteria andOdConsignTimeNotEqualTo(Date value) {
            addCriterion("od_consign_time <>", value, "odConsignTime");
            return (Criteria) this;
        }

        public Criteria andOdConsignTimeGreaterThan(Date value) {
            addCriterion("od_consign_time >", value, "odConsignTime");
            return (Criteria) this;
        }

        public Criteria andOdConsignTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("od_consign_time >=", value, "odConsignTime");
            return (Criteria) this;
        }

        public Criteria andOdConsignTimeLessThan(Date value) {
            addCriterion("od_consign_time <", value, "odConsignTime");
            return (Criteria) this;
        }

        public Criteria andOdConsignTimeLessThanOrEqualTo(Date value) {
            addCriterion("od_consign_time <=", value, "odConsignTime");
            return (Criteria) this;
        }

        public Criteria andOdConsignTimeIn(List<Date> values) {
            addCriterion("od_consign_time in", values, "odConsignTime");
            return (Criteria) this;
        }

        public Criteria andOdConsignTimeNotIn(List<Date> values) {
            addCriterion("od_consign_time not in", values, "odConsignTime");
            return (Criteria) this;
        }

        public Criteria andOdConsignTimeBetween(Date value1, Date value2) {
            addCriterion("od_consign_time between", value1, value2, "odConsignTime");
            return (Criteria) this;
        }

        public Criteria andOdConsignTimeNotBetween(Date value1, Date value2) {
            addCriterion("od_consign_time not between", value1, value2, "odConsignTime");
            return (Criteria) this;
        }

        public Criteria andOdEndTimeIsNull() {
            addCriterion("od_end_time is null");
            return (Criteria) this;
        }

        public Criteria andOdEndTimeIsNotNull() {
            addCriterion("od_end_time is not null");
            return (Criteria) this;
        }

        public Criteria andOdEndTimeEqualTo(Date value) {
            addCriterion("od_end_time =", value, "odEndTime");
            return (Criteria) this;
        }

        public Criteria andOdEndTimeNotEqualTo(Date value) {
            addCriterion("od_end_time <>", value, "odEndTime");
            return (Criteria) this;
        }

        public Criteria andOdEndTimeGreaterThan(Date value) {
            addCriterion("od_end_time >", value, "odEndTime");
            return (Criteria) this;
        }

        public Criteria andOdEndTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("od_end_time >=", value, "odEndTime");
            return (Criteria) this;
        }

        public Criteria andOdEndTimeLessThan(Date value) {
            addCriterion("od_end_time <", value, "odEndTime");
            return (Criteria) this;
        }

        public Criteria andOdEndTimeLessThanOrEqualTo(Date value) {
            addCriterion("od_end_time <=", value, "odEndTime");
            return (Criteria) this;
        }

        public Criteria andOdEndTimeIn(List<Date> values) {
            addCriterion("od_end_time in", values, "odEndTime");
            return (Criteria) this;
        }

        public Criteria andOdEndTimeNotIn(List<Date> values) {
            addCriterion("od_end_time not in", values, "odEndTime");
            return (Criteria) this;
        }

        public Criteria andOdEndTimeBetween(Date value1, Date value2) {
            addCriterion("od_end_time between", value1, value2, "odEndTime");
            return (Criteria) this;
        }

        public Criteria andOdEndTimeNotBetween(Date value1, Date value2) {
            addCriterion("od_end_time not between", value1, value2, "odEndTime");
            return (Criteria) this;
        }

        public Criteria andCustIdIsNull() {
            addCriterion("cust_id is null");
            return (Criteria) this;
        }

        public Criteria andCustIdIsNotNull() {
            addCriterion("cust_id is not null");
            return (Criteria) this;
        }

        public Criteria andCustIdEqualTo(String value) {
            addCriterion("cust_id =", value, "custId");
            return (Criteria) this;
        }

        public Criteria andCustIdNotEqualTo(String value) {
            addCriterion("cust_id <>", value, "custId");
            return (Criteria) this;
        }

        public Criteria andCustIdGreaterThan(String value) {
            addCriterion("cust_id >", value, "custId");
            return (Criteria) this;
        }

        public Criteria andCustIdGreaterThanOrEqualTo(String value) {
            addCriterion("cust_id >=", value, "custId");
            return (Criteria) this;
        }

        public Criteria andCustIdLessThan(String value) {
            addCriterion("cust_id <", value, "custId");
            return (Criteria) this;
        }

        public Criteria andCustIdLessThanOrEqualTo(String value) {
            addCriterion("cust_id <=", value, "custId");
            return (Criteria) this;
        }

        public Criteria andCustIdLike(String value) {
            addCriterion("cust_id like", value, "custId");
            return (Criteria) this;
        }

        public Criteria andCustIdNotLike(String value) {
            addCriterion("cust_id not like", value, "custId");
            return (Criteria) this;
        }

        public Criteria andCustIdIn(List<String> values) {
            addCriterion("cust_id in", values, "custId");
            return (Criteria) this;
        }

        public Criteria andCustIdNotIn(List<String> values) {
            addCriterion("cust_id not in", values, "custId");
            return (Criteria) this;
        }

        public Criteria andCustIdBetween(String value1, String value2) {
            addCriterion("cust_id between", value1, value2, "custId");
            return (Criteria) this;
        }

        public Criteria andCustIdNotBetween(String value1, String value2) {
            addCriterion("cust_id not between", value1, value2, "custId");
            return (Criteria) this;
        }

        public Criteria andCustNameIsNull() {
            addCriterion("cust_name is null");
            return (Criteria) this;
        }

        public Criteria andCustNameIsNotNull() {
            addCriterion("cust_name is not null");
            return (Criteria) this;
        }

        public Criteria andCustNameEqualTo(String value) {
            addCriterion("cust_name =", value, "custName");
            return (Criteria) this;
        }

        public Criteria andCustNameNotEqualTo(String value) {
            addCriterion("cust_name <>", value, "custName");
            return (Criteria) this;
        }

        public Criteria andCustNameGreaterThan(String value) {
            addCriterion("cust_name >", value, "custName");
            return (Criteria) this;
        }

        public Criteria andCustNameGreaterThanOrEqualTo(String value) {
            addCriterion("cust_name >=", value, "custName");
            return (Criteria) this;
        }

        public Criteria andCustNameLessThan(String value) {
            addCriterion("cust_name <", value, "custName");
            return (Criteria) this;
        }

        public Criteria andCustNameLessThanOrEqualTo(String value) {
            addCriterion("cust_name <=", value, "custName");
            return (Criteria) this;
        }

        public Criteria andCustNameLike(String value) {
            addCriterion("cust_name like", value, "custName");
            return (Criteria) this;
        }

        public Criteria andCustNameNotLike(String value) {
            addCriterion("cust_name not like", value, "custName");
            return (Criteria) this;
        }

        public Criteria andCustNameIn(List<String> values) {
            addCriterion("cust_name in", values, "custName");
            return (Criteria) this;
        }

        public Criteria andCustNameNotIn(List<String> values) {
            addCriterion("cust_name not in", values, "custName");
            return (Criteria) this;
        }

        public Criteria andCustNameBetween(String value1, String value2) {
            addCriterion("cust_name between", value1, value2, "custName");
            return (Criteria) this;
        }

        public Criteria andCustNameNotBetween(String value1, String value2) {
            addCriterion("cust_name not between", value1, value2, "custName");
            return (Criteria) this;
        }

        public Criteria andOdCostIsNull() {
            addCriterion("od_cost is null");
            return (Criteria) this;
        }

        public Criteria andOdCostIsNotNull() {
            addCriterion("od_cost is not null");
            return (Criteria) this;
        }

        public Criteria andOdCostEqualTo(Long value) {
            addCriterion("od_cost =", value, "odCost");
            return (Criteria) this;
        }

        public Criteria andOdCostNotEqualTo(Long value) {
            addCriterion("od_cost <>", value, "odCost");
            return (Criteria) this;
        }

        public Criteria andOdCostGreaterThan(Long value) {
            addCriterion("od_cost >", value, "odCost");
            return (Criteria) this;
        }

        public Criteria andOdCostGreaterThanOrEqualTo(Long value) {
            addCriterion("od_cost >=", value, "odCost");
            return (Criteria) this;
        }

        public Criteria andOdCostLessThan(Long value) {
            addCriterion("od_cost <", value, "odCost");
            return (Criteria) this;
        }

        public Criteria andOdCostLessThanOrEqualTo(Long value) {
            addCriterion("od_cost <=", value, "odCost");
            return (Criteria) this;
        }

        public Criteria andOdCostIn(List<Long> values) {
            addCriterion("od_cost in", values, "odCost");
            return (Criteria) this;
        }

        public Criteria andOdCostNotIn(List<Long> values) {
            addCriterion("od_cost not in", values, "odCost");
            return (Criteria) this;
        }

        public Criteria andOdCostBetween(Long value1, Long value2) {
            addCriterion("od_cost between", value1, value2, "odCost");
            return (Criteria) this;
        }

        public Criteria andOdCostNotBetween(Long value1, Long value2) {
            addCriterion("od_cost not between", value1, value2, "odCost");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}