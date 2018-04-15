// NoteWriter.h : main header file for the NOTEWRITER application
//

#if !defined(AFX_NOTEWRITER_H__2685E6B3_E36A_4EE9_B53B_5DD5A818F2D4__INCLUDED_)
#define AFX_NOTEWRITER_H__2685E6B3_E36A_4EE9_B53B_5DD5A818F2D4__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"       // main symbols

/////////////////////////////////////////////////////////////////////////////
// CNoteWriterApp:
// See NoteWriter.cpp for the implementation of this class
//

class CNoteWriterApp : public CWinApp
{
public:
	CNoteWriterApp();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CNoteWriterApp)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation
	COleTemplateServer m_server;
		// Server object for document creation
	//{{AFX_MSG(CNoteWriterApp)
	afx_msg void OnAppAbout();
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_NOTEWRITER_H__2685E6B3_E36A_4EE9_B53B_5DD5A818F2D4__INCLUDED_)
