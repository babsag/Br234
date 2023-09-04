.class Lnet/nfet/flutter/printing/PrintingJob$b;
.super Landroid/webkit/WebViewClient;
.source "PrintingJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/nfet/flutter/printing/PrintingJob;->f(Ljava/lang/String;Landroid/print/PrintAttributes$MediaSize;Landroid/print/PrintAttributes$Margins;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/print/PrintAttributes$MediaSize;

.field final synthetic b:Landroid/print/PrintAttributes$Margins;

.field final synthetic c:Landroid/webkit/WebView;

.field final synthetic d:Lnet/nfet/flutter/printing/PrintingJob;


# direct methods
.method constructor <init>(Lnet/nfet/flutter/printing/PrintingJob;Landroid/print/PrintAttributes$MediaSize;Landroid/print/PrintAttributes$Margins;Landroid/webkit/WebView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$size",
            "val$margins",
            "val$webView"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lnet/nfet/flutter/printing/PrintingJob$b;->d:Lnet/nfet/flutter/printing/PrintingJob;

    iput-object p2, p0, Lnet/nfet/flutter/printing/PrintingJob$b;->a:Landroid/print/PrintAttributes$MediaSize;

    iput-object p3, p0, Lnet/nfet/flutter/printing/PrintingJob$b;->b:Landroid/print/PrintAttributes$Margins;

    iput-object p4, p0, Lnet/nfet/flutter/printing/PrintingJob$b;->c:Landroid/webkit/WebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "url"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x13

    if-lt p1, p2, :cond_0

    .line 3
    new-instance p2, Landroid/print/PrintAttributes$Builder;

    invoke-direct {p2}, Landroid/print/PrintAttributes$Builder;-><init>()V

    iget-object v0, p0, Lnet/nfet/flutter/printing/PrintingJob$b;->a:Landroid/print/PrintAttributes$MediaSize;

    .line 4
    invoke-virtual {p2, v0}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    move-result-object p2

    new-instance v0, Landroid/print/PrintAttributes$Resolution;

    const-string v1, "pdf"

    const/16 v2, 0x258

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/print/PrintAttributes$Resolution;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 5
    invoke-virtual {p2, v0}, Landroid/print/PrintAttributes$Builder;->setResolution(Landroid/print/PrintAttributes$Resolution;)Landroid/print/PrintAttributes$Builder;

    move-result-object p2

    iget-object v0, p0, Lnet/nfet/flutter/printing/PrintingJob$b;->b:Landroid/print/PrintAttributes$Margins;

    .line 6
    invoke-virtual {p2, v0}, Landroid/print/PrintAttributes$Builder;->setMinMargins(Landroid/print/PrintAttributes$Margins;)Landroid/print/PrintAttributes$Builder;

    move-result-object p2

    .line 7
    invoke-virtual {p2}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object p2

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    .line 8
    iget-object p1, p0, Lnet/nfet/flutter/printing/PrintingJob$b;->c:Landroid/webkit/WebView;

    const-string v0, "printing"

    .line 9
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->createPrintDocumentAdapter(Ljava/lang/String;)Landroid/print/PrintDocumentAdapter;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lnet/nfet/flutter/printing/PrintingJob$b;->d:Lnet/nfet/flutter/printing/PrintingJob;

    invoke-static {v0}, Lnet/nfet/flutter/printing/PrintingJob;->d(Lnet/nfet/flutter/printing/PrintingJob;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lnet/nfet/flutter/printing/PrintingJob$b$a;

    invoke-direct {v1, p0}, Lnet/nfet/flutter/printing/PrintingJob$b$a;-><init>(Lnet/nfet/flutter/printing/PrintingJob$b;)V

    invoke-static {v0, p1, p2, v1}, Landroid/print/PdfConvert;->print(Landroid/content/Context;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;Landroid/print/PdfConvert$Result;)V

    :cond_0
    return-void
.end method
