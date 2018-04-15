// SrvrItem.h : interface of the CNoteWriterSrvrItem class
//

#if !defined(AFX_SRVRITEM_H__B7074964_6E39_4ACE_8468_73A83E6A174E__INCLUDED_)
#define AFX_SRVRITEM_H__B7074964_6E39_4ACE_8468_73A83E6A174E__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

class CNoteWriterSrvrItem : public CDocObjectServerItem
{
	DECLARE_DYNAMIC(CNoteWriterSrvrItem)

// Constructors
public:
	CNoteWriterSrvrItem(CNoteWriterDoc* pContainerDoc);

// Attributes
	CNoteWriterDoc* GetDocument() const
		{ return (CNoteWriterDoc*)CDocObjectServerItem::GetDocument(); }

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CNoteWriterSrvrItem)
	public:
	virtual BOOL OnDraw(CDC* pDC, CSize& rSize);
	virtual BOOL OnGetExtent(DVASPECT dwDrawAspect, CSize& rSize);
	//}}AFX_VIRTUAL

// Implementation
public:
	~CNoteWriterSrvrItem();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

protected:
	virtual void Serialize(CArchive& ar);   // overridden for document i/o
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SRVRITEM_H__B7074964_6E39_4ACE_8468_73A83E6A174E__INCLUDED_)
