// CntrItem.h : interface of the CNoteWriterCntrItem class
//

#if !defined(AFX_CNTRITEM_H__9AB4FE77_7FD5_4F7E_AF5B_FC16EAB97A36__INCLUDED_)
#define AFX_CNTRITEM_H__9AB4FE77_7FD5_4F7E_AF5B_FC16EAB97A36__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

class CNoteWriterDoc;
class CNoteWriterView;

class CNoteWriterCntrItem : public CRichEditCntrItem
{
	DECLARE_SERIAL(CNoteWriterCntrItem)

// Constructors
public:
	CNoteWriterCntrItem(REOBJECT* preo = NULL, CNoteWriterDoc* pContainer = NULL);
		// Note: pContainer is allowed to be NULL to enable IMPLEMENT_SERIALIZE.
		//  IMPLEMENT_SERIALIZE requires the class have a constructor with
		//  zero arguments.  Normally, OLE items are constructed with a
		//  non-NULL document pointer.

// Attributes
public:
	CNoteWriterDoc* GetDocument()
		{ return (CNoteWriterDoc*)CRichEditCntrItem::GetDocument(); }
	CNoteWriterView* GetActiveView()
		{ return (CNoteWriterView*)CRichEditCntrItem::GetActiveView(); }

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CNoteWriterCntrItem)
	public:
	protected:
	//}}AFX_VIRTUAL

// Implementation
public:
	~CNoteWriterCntrItem();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_CNTRITEM_H__9AB4FE77_7FD5_4F7E_AF5B_FC16EAB97A36__INCLUDED_)
