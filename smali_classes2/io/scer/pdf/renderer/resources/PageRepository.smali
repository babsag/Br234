.class public final Lio/scer/pdf/renderer/resources/PageRepository;
.super Lio/scer/pdf/renderer/resources/Repository;
.source "PageRepository.kt"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/scer/pdf/renderer/resources/Repository<",
        "Lio/scer/pdf/renderer/document/Page;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u001a\u0010\u0008\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00072\n\u0010\n\u001a\u00060\u000bR\u00020\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lio/scer/pdf/renderer/resources/PageRepository;",
        "Lio/scer/pdf/renderer/resources/Repository;",
        "Lio/scer/pdf/renderer/document/Page;",
        "()V",
        "close",
        "",
        "id",
        "",
        "register",
        "documentId",
        "pageRenderer",
        "Landroid/graphics/pdf/PdfRenderer$Page;",
        "Landroid/graphics/pdf/PdfRenderer;",
        "native_pdf_renderer_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/scer/pdf/renderer/resources/Repository;-><init>()V

    return-void
.end method


# virtual methods
.method public close(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lio/scer/pdf/renderer/resources/Repository;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/scer/pdf/renderer/document/Page;

    invoke-virtual {v0}, Lio/scer/pdf/renderer/document/Page;->close()V

    .line 2
    invoke-super {p0, p1}, Lio/scer/pdf/renderer/resources/Repository;->close(Ljava/lang/String;)V

    return-void
.end method

.method public final register(Ljava/lang/String;Landroid/graphics/pdf/PdfRenderer$Page;)Lio/scer/pdf/renderer/document/Page;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/pdf/PdfRenderer$Page;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "documentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageRenderer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lio/scer/pdf/renderer/utils/RandomKt;->getRandomID()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lio/scer/pdf/renderer/document/Page;

    invoke-direct {v1, v0, p1, p2}, Lio/scer/pdf/renderer/document/Page;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/pdf/PdfRenderer$Page;)V

    .line 3
    invoke-virtual {p0, v0, v1}, Lio/scer/pdf/renderer/resources/Repository;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1
.end method
