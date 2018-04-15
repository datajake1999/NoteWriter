// NoteWriterView.cpp : implementation of the CNoteWriterView class
//

#include "stdafx.h"
#include "NoteWriter.h"

#include "NoteWriterDoc.h"
#include "CntrItem.h"
#include "NoteWriterView.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CNoteWriterView

IMPLEMENT_DYNCREATE(CNoteWriterView, CRichEditView)

BEGIN_MESSAGE_MAP(CNoteWriterView, CRichEditView)
	//{{AFX_MSG_MAP(CNoteWriterView)
		// NOTE - the ClassWizard will add and remove mapping macros here.
		//    DO NOT EDIT what you see in these blocks of generated code!
	ON_WM_DESTROY()
	ON_COMMAND(ID_CANCEL_EDIT_SRVR, OnCancelEditSrvr)
	//}}AFX_MSG_MAP
	// Standard printing commands
	ON_COMMAND(ID_FILE_PRINT, CRichEditView::OnFilePrint)
	ON_COMMAND(ID_FILE_PRINT_DIRECT, CRichEditView::OnFilePrint)
	ON_COMMAND(ID_FILE_PRINT_PREVIEW, CRichEditView::OnFilePrintPreview)
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CNoteWriterView construction/destruction

CNoteWriterView::CNoteWriterView()
{
	// TODO: add construction code here

}

CNoteWriterView::~CNoteWriterView()
{
}

BOOL CNoteWriterView::PreCreateWindow(CREATESTRUCT& cs)
{
	// TODO: Modify the Window class or styles here by modifying
	//  the CREATESTRUCT cs

	return CRichEditView::PreCreateWindow(cs);
}

void CNoteWriterView::OnInitialUpdate()
{
	CRichEditView::OnInitialUpdate();

	//Active documents should always be activated
	COleDocument* pDoc = (COleDocument*) GetDocument();
	if (pDoc != NULL)
	{
		// activate the first one
		POSITION posItem = pDoc->GetStartPosition();
		if (posItem != NULL)
		{
			CDocItem* pItem = pDoc->GetNextItem(posItem);

			// only if it's an Active document
			COleDocObjectItem *pDocObjectItem =
				DYNAMIC_DOWNCAST(COleDocObjectItem, pItem);

			if (pDocObjectItem != NULL)
			{
				pDocObjectItem->DoVerb(OLEIVERB_SHOW, this);
			}
		}
	}

	// Set the printing margins (720 twips = 1/2 inch).
	SetMargins(CRect(720, 720, 720, 720));
}

/////////////////////////////////////////////////////////////////////////////
// CNoteWriterView printing

BOOL CNoteWriterView::OnPreparePrinting(CPrintInfo* pInfo)
{
	if (!CView::DoPreparePrinting(pInfo))
		return FALSE;
	
	if (!COleDocObjectItem::OnPreparePrinting(this, pInfo))
		return FALSE;

	return TRUE;
}


void CNoteWriterView::OnPrint(CDC* pDC, CPrintInfo* pInfo)
{
	// TODO: add customized printing code here
	if(pInfo->m_bDocObject)
		COleDocObjectItem::OnPrint(this, pInfo, TRUE);
	else
		CView::OnPrint(pDC, pInfo);
}

void CNoteWriterView::OnDestroy()
{
	// Deactivate the item on destruction; this is important
	// when a splitter view is being used.
   CRichEditView::OnDestroy();
   COleClientItem* pActiveItem = GetDocument()->GetInPlaceActiveItem(this);
   if (pActiveItem != NULL && pActiveItem->GetActiveView() == this)
   {
      pActiveItem->Deactivate();
      ASSERT(GetDocument()->GetInPlaceActiveItem(this) == NULL);
   }
}


/////////////////////////////////////////////////////////////////////////////
// OLE Server support

// The following command handler provides the standard keyboard
//  user interface to cancel an in-place editing session.  Here,
//  the server (not the container) causes the deactivation.
void CNoteWriterView::OnCancelEditSrvr()
{
	GetDocument()->OnDeactivateUI(FALSE);
}

/////////////////////////////////////////////////////////////////////////////
// CNoteWriterView diagnostics

#ifdef _DEBUG
void CNoteWriterView::AssertValid() const
{
	CRichEditView::AssertValid();
}

void CNoteWriterView::Dump(CDumpContext& dc) const
{
	CRichEditView::Dump(dc);
}

CNoteWriterDoc* CNoteWriterView::GetDocument() // non-debug version is inline
{
	ASSERT(m_pDocument->IsKindOf(RUNTIME_CLASS(CNoteWriterDoc)));
	return (CNoteWriterDoc*)m_pDocument;
}
#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CNoteWriterView message handlers
