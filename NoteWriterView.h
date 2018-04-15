// NoteWriterView.h : interface of the CNoteWriterView class
//
/////////////////////////////////////////////////////////////////////////////

#if !defined(AFX_NOTEWRITERVIEW_H__177E12A3_532D_42E0_A231_F364C7290E94__INCLUDED_)
#define AFX_NOTEWRITERVIEW_H__177E12A3_532D_42E0_A231_F364C7290E94__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

class CNoteWriterCntrItem;

class CNoteWriterView : public CRichEditView
{
protected: // create from serialization only
	CNoteWriterView();
	DECLARE_DYNCREATE(CNoteWriterView)

// Attributes
public:
	CNoteWriterDoc* GetDocument();

// Operations
public:

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CNoteWriterView)
	public:
	virtual BOOL PreCreateWindow(CREATESTRUCT& cs);
	protected:
	virtual void OnInitialUpdate(); // called first time after construct
	virtual BOOL OnPreparePrinting(CPrintInfo* pInfo);
	virtual void OnPrint(CDC* pDC, CPrintInfo* pInfo);
	//}}AFX_VIRTUAL

// Implementation
public:
	virtual ~CNoteWriterView();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

protected:

// Generated message map functions
protected:
	//{{AFX_MSG(CNoteWriterView)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	afx_msg void OnDestroy();
	afx_msg void OnCancelEditSrvr();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

#ifndef _DEBUG  // debug version in NoteWriterView.cpp
inline CNoteWriterDoc* CNoteWriterView::GetDocument()
   { return (CNoteWriterDoc*)m_pDocument; }
#endif

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_NOTEWRITERVIEW_H__177E12A3_532D_42E0_A231_F364C7290E94__INCLUDED_)
