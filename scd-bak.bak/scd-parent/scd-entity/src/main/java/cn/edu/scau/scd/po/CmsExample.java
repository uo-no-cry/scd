package cn.edu.scau.scd.po;

import java.util.ArrayList;
import java.util.List;

public class CmsExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public CmsExample() {
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

        public Criteria andCmsIdIsNull() {
            addCriterion("cms_id is null");
            return (Criteria) this;
        }

        public Criteria andCmsIdIsNotNull() {
            addCriterion("cms_id is not null");
            return (Criteria) this;
        }

        public Criteria andCmsIdEqualTo(String value) {
            addCriterion("cms_id =", value, "cmsId");
            return (Criteria) this;
        }

        public Criteria andCmsIdNotEqualTo(String value) {
            addCriterion("cms_id <>", value, "cmsId");
            return (Criteria) this;
        }

        public Criteria andCmsIdGreaterThan(String value) {
            addCriterion("cms_id >", value, "cmsId");
            return (Criteria) this;
        }

        public Criteria andCmsIdGreaterThanOrEqualTo(String value) {
            addCriterion("cms_id >=", value, "cmsId");
            return (Criteria) this;
        }

        public Criteria andCmsIdLessThan(String value) {
            addCriterion("cms_id <", value, "cmsId");
            return (Criteria) this;
        }

        public Criteria andCmsIdLessThanOrEqualTo(String value) {
            addCriterion("cms_id <=", value, "cmsId");
            return (Criteria) this;
        }

        public Criteria andCmsIdLike(String value) {
            addCriterion("cms_id like", value, "cmsId");
            return (Criteria) this;
        }

        public Criteria andCmsIdNotLike(String value) {
            addCriterion("cms_id not like", value, "cmsId");
            return (Criteria) this;
        }

        public Criteria andCmsIdIn(List<String> values) {
            addCriterion("cms_id in", values, "cmsId");
            return (Criteria) this;
        }

        public Criteria andCmsIdNotIn(List<String> values) {
            addCriterion("cms_id not in", values, "cmsId");
            return (Criteria) this;
        }

        public Criteria andCmsIdBetween(String value1, String value2) {
            addCriterion("cms_id between", value1, value2, "cmsId");
            return (Criteria) this;
        }

        public Criteria andCmsIdNotBetween(String value1, String value2) {
            addCriterion("cms_id not between", value1, value2, "cmsId");
            return (Criteria) this;
        }

        public Criteria andCmsCatIdIsNull() {
            addCriterion("cms_cat_id is null");
            return (Criteria) this;
        }

        public Criteria andCmsCatIdIsNotNull() {
            addCriterion("cms_cat_id is not null");
            return (Criteria) this;
        }

        public Criteria andCmsCatIdEqualTo(String value) {
            addCriterion("cms_cat_id =", value, "cmsCatId");
            return (Criteria) this;
        }

        public Criteria andCmsCatIdNotEqualTo(String value) {
            addCriterion("cms_cat_id <>", value, "cmsCatId");
            return (Criteria) this;
        }

        public Criteria andCmsCatIdGreaterThan(String value) {
            addCriterion("cms_cat_id >", value, "cmsCatId");
            return (Criteria) this;
        }

        public Criteria andCmsCatIdGreaterThanOrEqualTo(String value) {
            addCriterion("cms_cat_id >=", value, "cmsCatId");
            return (Criteria) this;
        }

        public Criteria andCmsCatIdLessThan(String value) {
            addCriterion("cms_cat_id <", value, "cmsCatId");
            return (Criteria) this;
        }

        public Criteria andCmsCatIdLessThanOrEqualTo(String value) {
            addCriterion("cms_cat_id <=", value, "cmsCatId");
            return (Criteria) this;
        }

        public Criteria andCmsCatIdLike(String value) {
            addCriterion("cms_cat_id like", value, "cmsCatId");
            return (Criteria) this;
        }

        public Criteria andCmsCatIdNotLike(String value) {
            addCriterion("cms_cat_id not like", value, "cmsCatId");
            return (Criteria) this;
        }

        public Criteria andCmsCatIdIn(List<String> values) {
            addCriterion("cms_cat_id in", values, "cmsCatId");
            return (Criteria) this;
        }

        public Criteria andCmsCatIdNotIn(List<String> values) {
            addCriterion("cms_cat_id not in", values, "cmsCatId");
            return (Criteria) this;
        }

        public Criteria andCmsCatIdBetween(String value1, String value2) {
            addCriterion("cms_cat_id between", value1, value2, "cmsCatId");
            return (Criteria) this;
        }

        public Criteria andCmsCatIdNotBetween(String value1, String value2) {
            addCriterion("cms_cat_id not between", value1, value2, "cmsCatId");
            return (Criteria) this;
        }

        public Criteria andCmsNameIsNull() {
            addCriterion("cms_name is null");
            return (Criteria) this;
        }

        public Criteria andCmsNameIsNotNull() {
            addCriterion("cms_name is not null");
            return (Criteria) this;
        }

        public Criteria andCmsNameEqualTo(String value) {
            addCriterion("cms_name =", value, "cmsName");
            return (Criteria) this;
        }

        public Criteria andCmsNameNotEqualTo(String value) {
            addCriterion("cms_name <>", value, "cmsName");
            return (Criteria) this;
        }

        public Criteria andCmsNameGreaterThan(String value) {
            addCriterion("cms_name >", value, "cmsName");
            return (Criteria) this;
        }

        public Criteria andCmsNameGreaterThanOrEqualTo(String value) {
            addCriterion("cms_name >=", value, "cmsName");
            return (Criteria) this;
        }

        public Criteria andCmsNameLessThan(String value) {
            addCriterion("cms_name <", value, "cmsName");
            return (Criteria) this;
        }

        public Criteria andCmsNameLessThanOrEqualTo(String value) {
            addCriterion("cms_name <=", value, "cmsName");
            return (Criteria) this;
        }

        public Criteria andCmsNameLike(String value) {
            addCriterion("cms_name like", value, "cmsName");
            return (Criteria) this;
        }

        public Criteria andCmsNameNotLike(String value) {
            addCriterion("cms_name not like", value, "cmsName");
            return (Criteria) this;
        }

        public Criteria andCmsNameIn(List<String> values) {
            addCriterion("cms_name in", values, "cmsName");
            return (Criteria) this;
        }

        public Criteria andCmsNameNotIn(List<String> values) {
            addCriterion("cms_name not in", values, "cmsName");
            return (Criteria) this;
        }

        public Criteria andCmsNameBetween(String value1, String value2) {
            addCriterion("cms_name between", value1, value2, "cmsName");
            return (Criteria) this;
        }

        public Criteria andCmsNameNotBetween(String value1, String value2) {
            addCriterion("cms_name not between", value1, value2, "cmsName");
            return (Criteria) this;
        }

        public Criteria andCmsPicIsNull() {
            addCriterion("cms_pic is null");
            return (Criteria) this;
        }

        public Criteria andCmsPicIsNotNull() {
            addCriterion("cms_pic is not null");
            return (Criteria) this;
        }

        public Criteria andCmsPicEqualTo(String value) {
            addCriterion("cms_pic =", value, "cmsPic");
            return (Criteria) this;
        }

        public Criteria andCmsPicNotEqualTo(String value) {
            addCriterion("cms_pic <>", value, "cmsPic");
            return (Criteria) this;
        }

        public Criteria andCmsPicGreaterThan(String value) {
            addCriterion("cms_pic >", value, "cmsPic");
            return (Criteria) this;
        }

        public Criteria andCmsPicGreaterThanOrEqualTo(String value) {
            addCriterion("cms_pic >=", value, "cmsPic");
            return (Criteria) this;
        }

        public Criteria andCmsPicLessThan(String value) {
            addCriterion("cms_pic <", value, "cmsPic");
            return (Criteria) this;
        }

        public Criteria andCmsPicLessThanOrEqualTo(String value) {
            addCriterion("cms_pic <=", value, "cmsPic");
            return (Criteria) this;
        }

        public Criteria andCmsPicLike(String value) {
            addCriterion("cms_pic like", value, "cmsPic");
            return (Criteria) this;
        }

        public Criteria andCmsPicNotLike(String value) {
            addCriterion("cms_pic not like", value, "cmsPic");
            return (Criteria) this;
        }

        public Criteria andCmsPicIn(List<String> values) {
            addCriterion("cms_pic in", values, "cmsPic");
            return (Criteria) this;
        }

        public Criteria andCmsPicNotIn(List<String> values) {
            addCriterion("cms_pic not in", values, "cmsPic");
            return (Criteria) this;
        }

        public Criteria andCmsPicBetween(String value1, String value2) {
            addCriterion("cms_pic between", value1, value2, "cmsPic");
            return (Criteria) this;
        }

        public Criteria andCmsPicNotBetween(String value1, String value2) {
            addCriterion("cms_pic not between", value1, value2, "cmsPic");
            return (Criteria) this;
        }

        public Criteria andCmsUrlIsNull() {
            addCriterion("cms_url is null");
            return (Criteria) this;
        }

        public Criteria andCmsUrlIsNotNull() {
            addCriterion("cms_url is not null");
            return (Criteria) this;
        }

        public Criteria andCmsUrlEqualTo(String value) {
            addCriterion("cms_url =", value, "cmsUrl");
            return (Criteria) this;
        }

        public Criteria andCmsUrlNotEqualTo(String value) {
            addCriterion("cms_url <>", value, "cmsUrl");
            return (Criteria) this;
        }

        public Criteria andCmsUrlGreaterThan(String value) {
            addCriterion("cms_url >", value, "cmsUrl");
            return (Criteria) this;
        }

        public Criteria andCmsUrlGreaterThanOrEqualTo(String value) {
            addCriterion("cms_url >=", value, "cmsUrl");
            return (Criteria) this;
        }

        public Criteria andCmsUrlLessThan(String value) {
            addCriterion("cms_url <", value, "cmsUrl");
            return (Criteria) this;
        }

        public Criteria andCmsUrlLessThanOrEqualTo(String value) {
            addCriterion("cms_url <=", value, "cmsUrl");
            return (Criteria) this;
        }

        public Criteria andCmsUrlLike(String value) {
            addCriterion("cms_url like", value, "cmsUrl");
            return (Criteria) this;
        }

        public Criteria andCmsUrlNotLike(String value) {
            addCriterion("cms_url not like", value, "cmsUrl");
            return (Criteria) this;
        }

        public Criteria andCmsUrlIn(List<String> values) {
            addCriterion("cms_url in", values, "cmsUrl");
            return (Criteria) this;
        }

        public Criteria andCmsUrlNotIn(List<String> values) {
            addCriterion("cms_url not in", values, "cmsUrl");
            return (Criteria) this;
        }

        public Criteria andCmsUrlBetween(String value1, String value2) {
            addCriterion("cms_url between", value1, value2, "cmsUrl");
            return (Criteria) this;
        }

        public Criteria andCmsUrlNotBetween(String value1, String value2) {
            addCriterion("cms_url not between", value1, value2, "cmsUrl");
            return (Criteria) this;
        }

        public Criteria andCmsPriceIsNull() {
            addCriterion("cms_price is null");
            return (Criteria) this;
        }

        public Criteria andCmsPriceIsNotNull() {
            addCriterion("cms_price is not null");
            return (Criteria) this;
        }

        public Criteria andCmsPriceEqualTo(Long value) {
            addCriterion("cms_price =", value, "cmsPrice");
            return (Criteria) this;
        }

        public Criteria andCmsPriceNotEqualTo(Long value) {
            addCriterion("cms_price <>", value, "cmsPrice");
            return (Criteria) this;
        }

        public Criteria andCmsPriceGreaterThan(Long value) {
            addCriterion("cms_price >", value, "cmsPrice");
            return (Criteria) this;
        }

        public Criteria andCmsPriceGreaterThanOrEqualTo(Long value) {
            addCriterion("cms_price >=", value, "cmsPrice");
            return (Criteria) this;
        }

        public Criteria andCmsPriceLessThan(Long value) {
            addCriterion("cms_price <", value, "cmsPrice");
            return (Criteria) this;
        }

        public Criteria andCmsPriceLessThanOrEqualTo(Long value) {
            addCriterion("cms_price <=", value, "cmsPrice");
            return (Criteria) this;
        }

        public Criteria andCmsPriceIn(List<Long> values) {
            addCriterion("cms_price in", values, "cmsPrice");
            return (Criteria) this;
        }

        public Criteria andCmsPriceNotIn(List<Long> values) {
            addCriterion("cms_price not in", values, "cmsPrice");
            return (Criteria) this;
        }

        public Criteria andCmsPriceBetween(Long value1, Long value2) {
            addCriterion("cms_price between", value1, value2, "cmsPrice");
            return (Criteria) this;
        }

        public Criteria andCmsPriceNotBetween(Long value1, Long value2) {
            addCriterion("cms_price not between", value1, value2, "cmsPrice");
            return (Criteria) this;
        }

        public Criteria andCmsOldPriceIsNull() {
            addCriterion("cms_old_price is null");
            return (Criteria) this;
        }

        public Criteria andCmsOldPriceIsNotNull() {
            addCriterion("cms_old_price is not null");
            return (Criteria) this;
        }

        public Criteria andCmsOldPriceEqualTo(Long value) {
            addCriterion("cms_old_price =", value, "cmsOldPrice");
            return (Criteria) this;
        }

        public Criteria andCmsOldPriceNotEqualTo(Long value) {
            addCriterion("cms_old_price <>", value, "cmsOldPrice");
            return (Criteria) this;
        }

        public Criteria andCmsOldPriceGreaterThan(Long value) {
            addCriterion("cms_old_price >", value, "cmsOldPrice");
            return (Criteria) this;
        }

        public Criteria andCmsOldPriceGreaterThanOrEqualTo(Long value) {
            addCriterion("cms_old_price >=", value, "cmsOldPrice");
            return (Criteria) this;
        }

        public Criteria andCmsOldPriceLessThan(Long value) {
            addCriterion("cms_old_price <", value, "cmsOldPrice");
            return (Criteria) this;
        }

        public Criteria andCmsOldPriceLessThanOrEqualTo(Long value) {
            addCriterion("cms_old_price <=", value, "cmsOldPrice");
            return (Criteria) this;
        }

        public Criteria andCmsOldPriceIn(List<Long> values) {
            addCriterion("cms_old_price in", values, "cmsOldPrice");
            return (Criteria) this;
        }

        public Criteria andCmsOldPriceNotIn(List<Long> values) {
            addCriterion("cms_old_price not in", values, "cmsOldPrice");
            return (Criteria) this;
        }

        public Criteria andCmsOldPriceBetween(Long value1, Long value2) {
            addCriterion("cms_old_price between", value1, value2, "cmsOldPrice");
            return (Criteria) this;
        }

        public Criteria andCmsOldPriceNotBetween(Long value1, Long value2) {
            addCriterion("cms_old_price not between", value1, value2, "cmsOldPrice");
            return (Criteria) this;
        }

        public Criteria andCmsItemIdIsNull() {
            addCriterion("cms_item_id is null");
            return (Criteria) this;
        }

        public Criteria andCmsItemIdIsNotNull() {
            addCriterion("cms_item_id is not null");
            return (Criteria) this;
        }

        public Criteria andCmsItemIdEqualTo(String value) {
            addCriterion("cms_item_id =", value, "cmsItemId");
            return (Criteria) this;
        }

        public Criteria andCmsItemIdNotEqualTo(String value) {
            addCriterion("cms_item_id <>", value, "cmsItemId");
            return (Criteria) this;
        }

        public Criteria andCmsItemIdGreaterThan(String value) {
            addCriterion("cms_item_id >", value, "cmsItemId");
            return (Criteria) this;
        }

        public Criteria andCmsItemIdGreaterThanOrEqualTo(String value) {
            addCriterion("cms_item_id >=", value, "cmsItemId");
            return (Criteria) this;
        }

        public Criteria andCmsItemIdLessThan(String value) {
            addCriterion("cms_item_id <", value, "cmsItemId");
            return (Criteria) this;
        }

        public Criteria andCmsItemIdLessThanOrEqualTo(String value) {
            addCriterion("cms_item_id <=", value, "cmsItemId");
            return (Criteria) this;
        }

        public Criteria andCmsItemIdLike(String value) {
            addCriterion("cms_item_id like", value, "cmsItemId");
            return (Criteria) this;
        }

        public Criteria andCmsItemIdNotLike(String value) {
            addCriterion("cms_item_id not like", value, "cmsItemId");
            return (Criteria) this;
        }

        public Criteria andCmsItemIdIn(List<String> values) {
            addCriterion("cms_item_id in", values, "cmsItemId");
            return (Criteria) this;
        }

        public Criteria andCmsItemIdNotIn(List<String> values) {
            addCriterion("cms_item_id not in", values, "cmsItemId");
            return (Criteria) this;
        }

        public Criteria andCmsItemIdBetween(String value1, String value2) {
            addCriterion("cms_item_id between", value1, value2, "cmsItemId");
            return (Criteria) this;
        }

        public Criteria andCmsItemIdNotBetween(String value1, String value2) {
            addCriterion("cms_item_id not between", value1, value2, "cmsItemId");
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