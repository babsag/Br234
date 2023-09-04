.class Lbr/com/topaz/o/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/r/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/o/i;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/o/i;


# direct methods
.method constructor <init>(Lbr/com/topaz/o/i;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/o/i$a;->a:Lbr/com/topaz/o/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lbr/com/topaz/l/l;)V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/o/i$a;->a:Lbr/com/topaz/o/i;

    invoke-static {v0}, Lbr/com/topaz/o/i;->a(Lbr/com/topaz/o/i;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lbr/com/topaz/r/a;->b(Landroid/content/Context;Lbr/com/topaz/l/l;)Lbr/com/topaz/r/k;

    move-result-object p1

    new-instance v0, Lbr/com/topaz/o/i$a$a;

    invoke-direct {v0, p0}, Lbr/com/topaz/o/i$a$a;-><init>(Lbr/com/topaz/o/i$a;)V

    invoke-virtual {p1, v0}, Lbr/com/topaz/r/k;->a(Lbr/com/topaz/r/k$c;)V

    invoke-virtual {p1}, Lbr/com/topaz/s0/a;->b()V

    return-void
.end method
