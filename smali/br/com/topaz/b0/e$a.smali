.class Lbr/com/topaz/b0/e$a;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/b0/e;-><init>(Landroid/content/Context;Lbr/com/topaz/l/f0;Lbr/com/topaz/t0/b;Lbr/com/topaz/heartbeat/utils/OFDException;Lbr/com/topaz/l/e0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/b0/e;


# direct methods
.method constructor <init>(Lbr/com/topaz/b0/e;)V
    .locals 1

    iput-object p1, p0, Lbr/com/topaz/b0/e$a;->a:Lbr/com/topaz/b0/e;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string p1, "x-idn-io"

    const-string v0, "1"

    invoke-virtual {p0, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
