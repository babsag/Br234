.class Landroid/print/PdfConvert$a;
.super Landroid/print/PrintDocumentAdapter$LayoutResultCallback;
.source "PdfConvert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/print/PdfConvert;->print(Landroid/content/Context;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;Landroid/print/PdfConvert$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/print/PdfConvert$Result;

.field final synthetic c:Landroid/print/PrintDocumentAdapter;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/print/PdfConvert$Result;Landroid/print/PrintDocumentAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$context",
            "val$result",
            "val$adapter"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroid/print/PdfConvert$a;->a:Landroid/content/Context;

    iput-object p2, p0, Landroid/print/PdfConvert$a;->b:Landroid/print/PdfConvert$Result;

    iput-object p3, p0, Landroid/print/PdfConvert$a;->c:Landroid/print/PrintDocumentAdapter;

    invoke-direct {p0}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "info",
            "changed"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Landroid/print/PdfConvert$a;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    :try_start_0
    const-string p2, "printing"

    const-string v0, "pdf"

    .line 2
    invoke-static {p2, v0, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3
    :try_start_1
    iget-object p2, p0, Landroid/print/PdfConvert$a;->c:Landroid/print/PrintDocumentAdapter;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/print/PageRange;

    const/4 v1, 0x0

    sget-object v2, Landroid/print/PageRange;->ALL_PAGES:Landroid/print/PageRange;

    aput-object v2, v0, v1

    const/high16 v1, 0x30000000

    .line 4
    invoke-static {p1, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    new-instance v2, Landroid/os/CancellationSignal;

    invoke-direct {v2}, Landroid/os/CancellationSignal;-><init>()V

    new-instance v3, Landroid/print/PdfConvert$a$a;

    invoke-direct {v3, p0, p1}, Landroid/print/PdfConvert$a$a;-><init>(Landroid/print/PdfConvert$a;Ljava/io/File;)V

    .line 5
    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/print/PrintDocumentAdapter;->onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 6
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "PDF"

    const-string v0, "Unable to delete temporary file"

    .line 7
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_0
    iget-object p1, p0, Landroid/print/PdfConvert$a;->b:Landroid/print/PdfConvert$Result;

    invoke-virtual {p2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/print/PdfConvert$Result;->onError(Ljava/lang/String;)V

    :goto_0
    return-void

    :catch_1
    move-exception p1

    .line 9
    iget-object p2, p0, Landroid/print/PdfConvert$a;->b:Landroid/print/PdfConvert$Result;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Landroid/print/PdfConvert$Result;->onError(Ljava/lang/String;)V

    return-void
.end method
