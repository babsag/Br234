.class Lbr/com/topaz/g/a$a;
.super Lbr/com/topaz/a/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbr/com/topaz/g/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/g/a;


# direct methods
.method constructor <init>(Lbr/com/topaz/g/a;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/g/a$a;->a:Lbr/com/topaz/g/a;

    invoke-direct {p0}, Lbr/com/topaz/a/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 7

    new-instance v0, Lbr/com/topaz/u0/s;

    invoke-direct {v0}, Lbr/com/topaz/u0/s;-><init>()V

    new-instance v1, Lbr/com/topaz/heartbeat/wrapper/DollyScannerWrapper;

    invoke-direct {v1}, Lbr/com/topaz/heartbeat/wrapper/DollyScannerWrapper;-><init>()V

    const/16 v2, 0xbf

    invoke-interface {v0, v2}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xc2

    invoke-interface {v0, v3}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lbr/com/topaz/heartbeat/wrapper/DollyScannerWrapper;->a:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lbr/com/topaz/heartbeat/wrapper/DollyScannerWrapper;->a(Ljava/lang/String;Ljava/lang/String;III)Lbr/com/topaz/o/k$a;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/topaz/o/k$a;->a()Z

    move-result v0

    return v0
.end method
