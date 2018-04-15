// CntrItem.cpp : implementation of the CNoteWriterCntrItem class
//

#include "stdafx.h"
#include "NoteWriter.h"

#include "NoteWriterDoc.h"
#include "NoteWriterView.h"
#include "CntrItem.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CNoteWriterCntrItem implementation

IMPLEMENT_SERIAL(CNoteWriterCntrItem, CRichEditCntrItem, 0)

CNoteWriterCntrItem::CNoteWriterCntrItem(REOBJECT* preo, CNoteWriterDoc* pContainer)
	: CRichEditCntrItem(preo, pContainer)
{
	// TODO: add one-time construction code here
	
}

CNoteWriterCntrItem::~CNoteWriterCntrItem()
{
	// TODO: add cleanup code here
	
}

/////////////////////////////////////////////////////////////////////////////
// CNoteWriterCntrItem diagnostics

#ifdef _DEBUG
void CNoteWriterCntrItem::AssertValid() const
{
	CRichEditCntrItem::AssertValid();
}

void CNoteWriterCntrItem::Dump(CDumpContext& dc) const
{
	CRichEditCntrItem::Dump(dc);
}
#endif

/////////////////////////////////////////////////////////////////////////////
