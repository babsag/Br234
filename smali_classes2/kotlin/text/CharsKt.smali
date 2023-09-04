.class public final Lkotlin/text/CharsKt;
.super Lkotlin/text/b;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "kotlin/text/CharsKt__CharJVMKt",
        "kotlin/text/CharsKt__CharKt"
    }
    k = 0x4
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x31
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlin/text/b;-><init>()V

    return-void
.end method

.method public static bridge synthetic checkRadix(I)I
    .locals 0
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    invoke-static {p0}, Lkotlin/text/a;->checkRadix(I)I

    move-result p0

    return p0
.end method
