.class Lnet/nfet/flutter/printing/PrintingJob$b$a;
.super Ljava/lang/Object;
.source "PrintingJob.java"

# interfaces
.implements Landroid/print/PdfConvert$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/nfet/flutter/printing/PrintingJob$b;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/nfet/flutter/printing/PrintingJob$b;


# direct methods
.method constructor <init>(Lnet/nfet/flutter/printing/PrintingJob$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lnet/nfet/flutter/printing/PrintingJob$b$a;->a:Lnet/nfet/flutter/printing/PrintingJob$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/nfet/flutter/printing/PrintingJob$b$a;->a:Lnet/nfet/flutter/printing/PrintingJob$b;

    iget-object v0, v0, Lnet/nfet/flutter/printing/PrintingJob$b;->d:Lnet/nfet/flutter/printing/PrintingJob;

    invoke-static {v0}, Lnet/nfet/flutter/printing/PrintingJob;->c(Lnet/nfet/flutter/printing/PrintingJob;)Lnet/nfet/flutter/printing/PrintingHandler;

    move-result-object v0

    iget-object v1, p0, Lnet/nfet/flutter/printing/PrintingJob$b$a;->a:Lnet/nfet/flutter/printing/PrintingJob$b;

    iget-object v1, v1, Lnet/nfet/flutter/printing/PrintingJob$b;->d:Lnet/nfet/flutter/printing/PrintingJob;

    invoke-virtual {v0, v1, p1}, Lnet/nfet/flutter/printing/PrintingHandler;->b(Lnet/nfet/flutter/printing/PrintingJob;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/print/PdfConvert;->readFile(Ljava/io/File;)[B

    move-result-object p1

    .line 2
    iget-object v0, p0, Lnet/nfet/flutter/printing/PrintingJob$b$a;->a:Lnet/nfet/flutter/printing/PrintingJob$b;

    iget-object v0, v0, Lnet/nfet/flutter/printing/PrintingJob$b;->d:Lnet/nfet/flutter/printing/PrintingJob;

    invoke-static {v0}, Lnet/nfet/flutter/printing/PrintingJob;->c(Lnet/nfet/flutter/printing/PrintingJob;)Lnet/nfet/flutter/printing/PrintingHandler;

    move-result-object v0

    iget-object v1, p0, Lnet/nfet/flutter/printing/PrintingJob$b$a;->a:Lnet/nfet/flutter/printing/PrintingJob$b;

    iget-object v1, v1, Lnet/nfet/flutter/printing/PrintingJob$b;->d:Lnet/nfet/flutter/printing/PrintingJob;

    invoke-virtual {v0, v1, p1}, Lnet/nfet/flutter/printing/PrintingHandler;->c(Lnet/nfet/flutter/printing/PrintingJob;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/nfet/flutter/printing/PrintingJob$b$a;->onError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
