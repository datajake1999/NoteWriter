// NoteWriterDoc.cpp : implementation of the CNoteWriterDoc class
//

#include "stdafx.h"
#include "NoteWriter.h"

#include "NoteWriterDoc.h"
#include "CntrItem.h"
#include "SrvrItem.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CNoteWriterDoc

IMPLEMENT_DYNCREATE(CNoteWriterDoc, CRichEditDoc)

BEGIN_MESSAGE_MAP(CNoteWriterDoc, CRichEditDoc)
	//{{AFX_MSG_MAP(CNoteWriterDoc)
		// NOTE - the ClassWizard will add and remove mapping macros here.
		//    DO NOT EDIT what you see in these blocks of generated code!
	//}}AFX_MSG_MAP
	// Enable default OLE container implementation
	ON_UPDATE_COMMAND_UI(ID_OLE_EDIT_LINKS, CRichEditDoc::OnUpdateEditLinksMenu)
	ON_COMMAND(ID_OLE_EDIT_LINKS, CRichEditDoc::OnEditLinks)
	ON_COMMAND(ID_OLE_EDIT_CHANGE_ICON, CRichEditDoc::OnEditChangeIcon)
	ON_COMMAND(ID_OLE_EDIT_CONVERT, CRichEditDoc::OnEditConvert)
	ON_UPDATE_COMMAND_UI_RANGE(ID_OLE_VERB_FIRST, ID_OLE_VERB_LAST, CRichEditDoc::OnUpdateObjectVerbMenu)
	ON_COMMAND(ID_FILE_SEND_MAIL, OnFileSendMail)
	ON_UPDATE_COMMAND_UI(ID_FILE_SEND_MAIL, OnUpdateFileSendMail)
END_MESSAGE_MAP()

BEGIN_DISPATCH_MAP(CNoteWriterDoc, CRichEditDoc)
	//{{AFX_DISPATCH_MAP(CNoteWriterDoc)
		// NOTE - the ClassWizard will add and remove mapping macros here.
		//      DO NOT EDIT what you see in these blocks of generated code!
	//}}AFX_DISPATCH_MAP
END_DISPATCH_MAP()

// Note: we add support for IID_INoteWriter to support typesafe binding
//  from VBA.  This IID must match the GUID that is attached to the 
//  dispinterface in the .ODL file.

// {AE8F16F7-FD1A-498B-9CF2-485E36504266}
static const IID IID_INoteWriter =
{ 0xae8f16f7, 0xfd1a, 0x498b, { 0x9c, 0xf2, 0x48, 0x5e, 0x36, 0x50, 0x42, 0x66 } };

BEGIN_INTERFACE_MAP(CNoteWriterDoc, CRichEditDoc)
	INTERFACE_PART(CNoteWriterDoc, IID_INoteWriter, Dispatch)
END_INTERFACE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CNoteWriterDoc construction/destruction

CNoteWriterDoc::CNoteWriterDoc()
{
	// Use OLE compound files
	EnableCompoundFile();

	// TODO: add one-time construction code here

	EnableAutomation();

	AfxOleLockApp();
}

CNoteWriterDoc::~CNoteWriterDoc()
{
	AfxOleUnlockApp();
}

BOOL CNoteWriterDoc::OnNewDocument()
{
	if (!CRichEditDoc::OnNewDocument())
		return FALSE;

	// TODO: add reinitialization code here
	// (SDI documents will reuse this document)

	return TRUE;
}

CRichEditCntrItem* CNoteWriterDoc::CreateClientItem(REOBJECT* preo) const
{
	// cast away constness of this
	return new CNoteWriterCntrItem(preo, (CNoteWriterDoc*) this);
}

/////////////////////////////////////////////////////////////////////////////
// CNoteWriterDoc server implementation

COleServerItem* CNoteWriterDoc::OnGetEmbeddedItem()
{
	// OnGetEmbeddedItem is called by the framework to get the COleServerItem
	//  that is associated with the document.  It is only called when necessary.

	CNoteWriterSrvrItem* pItem = new CNoteWriterSrvrItem(this);
	ASSERT_VALID(pItem);
	return pItem;
}

/////////////////////////////////////////////////////////////////////////////
// CNoteWriterDoc Active Document server implementation

CDocObjectServer *CNoteWriterDoc::GetDocObjectServer(LPOLEDOCUMENTSITE pDocSite)
{
	return new CDocObjectServer(this, pDocSite);
}



/////////////////////////////////////////////////////////////////////////////
// CNoteWriterDoc serialization

void CNoteWriterDoc::Serialize(CArchive& ar)
{
	if (ar.IsStoring())
	{
		// TODO: add storing code here
	}
	else
	{
		// TODO: add loading code here
	}

	// Calling the base class CRichEditDoc enables serialization
	//  of the container document's COleClientItem objects.
	// TODO: set CRichEditDoc::m_bRTF = FALSE if you are serializing as text
	CRichEditDoc::Serialize(ar);
}

/////////////////////////////////////////////////////////////////////////////
// CNoteWriterDoc diagnostics

#ifdef _DEBUG
void CNoteWriterDoc::AssertValid() const
{
	CRichEditDoc::AssertValid();
}

void CNoteWriterDoc::Dump(CDumpContext& dc) const
{
	CRichEditDoc::Dump(dc);
}
#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CNoteWriterDoc commands
