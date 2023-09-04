.class Lbr/com/topaz/r/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/r/l;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/r/l;


# direct methods
.method constructor <init>(Lbr/com/topaz/r/l;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/r/l$a;->a:Lbr/com/topaz/r/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lbr/com/topaz/r/l$a;->a:Lbr/com/topaz/r/l;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbr/com/topaz/r/l$a;->a:Lbr/com/topaz/r/l;

    invoke-static {v2}, Lbr/com/topaz/r/l;->a(Lbr/com/topaz/r/l;)Lbr/com/topaz/k0/f;

    move-result-object v2

    invoke-virtual {v2}, Lbr/com/topaz/k0/f;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbr/com/topaz/r/l;->a(Lbr/com/topaz/r/l;Ljava/lang/String;)V

    return-void
.end method
