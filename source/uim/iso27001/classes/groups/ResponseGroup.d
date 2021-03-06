module uim.grundschutz.models.iso27k.ResponseGroup;

import uim.grundschutz;

/* 

 */

class ResponseGroup : Group<Asset> : IISO27kGroup {

	static final string TYPE_ID = "response_group"; //$NON-NLS-1$
	static final string PROP_NAME = "response_group_name"; //$NON-NLS-1$
	
	static final string[] CHILD_TYPES = new string[] {Response.TYPE_ID};
	
	
	ResponseGroup() {
		super();
	}
	
	ResponseGroup(CnATreeElement parent) {
		super(parent);
		setEntity(new Entity(TYPE_ID));
        // sets the localized title via HUITypeFactory from message bundle
        setTitel(getTypeFactory().getMessage(TYPE_ID));
    }

	/* (non-Javadoc)
	 * @see snt.gs.ui.rcp.main.common.model.CnATreeElement#getTypeId()
	 */


	override string getTitle() {
		return getEntity().getSimpleValue(PROP_NAME);
	}
	
	void setTitel(string name) {
		getEntity().setSimpleValue(getEntityType().getPropertyType(PROP_NAME), name);
	}

	/* (non-Javadoc)
	 * @see iso27k.model.Group#getChildTypes()
	 */
	override string[] getChildTypes() {
		return CHILD_TYPES;
	}

}
