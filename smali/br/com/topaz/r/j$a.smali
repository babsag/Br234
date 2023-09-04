.class Lbr/com/topaz/r/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/f0/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/r/j;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/r/j;


# direct methods
.method constructor <init>(Lbr/com/topaz/r/j;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/r/j$a;->a:Lbr/com/topaz/r/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/r/j$a;->a:Lbr/com/topaz/r/j;

    invoke-static {v0}, Lbr/com/topaz/r/j;->a(Lbr/com/topaz/r/j;)Lbr/com/topaz/r/j$b;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/topaz/r/j$b;->d()V

    return-void
.end method

.method public onSuccess()V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/r/j$a;->a:Lbr/com/topaz/r/j;

    invoke-static {v0}, Lbr/com/topaz/r/j;->a(Lbr/com/topaz/r/j;)Lbr/com/topaz/r/j$b;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/topaz/r/j$b;->c()V

    return-void
.end method
