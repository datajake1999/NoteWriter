// NoteWriterDoc.h : interface of the CNoteWriterDoc class
//
/////////////////////////////////////////////////////////////////////////////

#if !defined(AFX_NOTEWRITERDOC_H__F0648A6B_B160_44C2_97BE_45E3969F8A03__INCLUDED_)
#define AFX_NOTEWRITERDOC_H__F0648A6B_B160_44C2_97BE_45E3969F8A03__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000


class CNoteWriterSrvrItem;

class CNoteWriterDoc : public CRichEditDoc
{
protected: // create from serialization only
	CNoteWriterDoc();
	DECLARE_DYNCREATE(CNoteWriterDoc)

// Attributes
public:
	CNoteWriterSrvrItem* GetEmbeddedItem()
		{ return (CNoteWriterSrvrItem*)CRichEditDoc::GetEmbeddedItem(); }

// Operations
public:

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CNoteWriterDoc)
	protected:
	virtual COleServerItem* OnGetEmbeddedItem();
	public:
	virtual BOOL OnNewDocument();
	virtual void Serialize(CArchive& ar);
	//}}AFX_VIRTUAL
	virtual CRichEditCntrItem* CreateClientItem(REOBJECT* preo) const;

// Implementation
public:
	virtual ~CNoteWriterDoc();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

protected:
	virtual CDocObjectServer* GetDocObjectServer(LPOLEDOCUMENTSITE pDocSite);

// Generated message map functions
protected:
	//{{AFX_MSG(CNoteWriterDoc)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()

	// Generated OLE dispatch map functions
	//{{AFX_DISPATCH(CNoteWriterDoc)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_DISPATCH
	DECLARE_DISPATCH_MAP()
	DECLARE_INTERFACE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_NOTEWRITERDOC_H__F0648A6B_B160_44C2_97BE_45E3969F8A03__INCLUDED_)
