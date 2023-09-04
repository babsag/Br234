.class Lbr/com/topaz/h0/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/h0/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/h0/b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/h0/b;


# direct methods
.method constructor <init>(Lbr/com/topaz/h0/b;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/h0/b$a;->a:Lbr/com/topaz/h0/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/h0/b$a;->a:Lbr/com/topaz/h0/b;

    invoke-static {v0}, Lbr/com/topaz/h0/b;->a(Lbr/com/topaz/h0/b;)Lbr/com/topaz/m/a;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/m/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbr/com/topaz/h0/b$a;->a:Lbr/com/topaz/h0/b;

    invoke-static {v0}, Lbr/com/topaz/h0/b;->b(Lbr/com/topaz/h0/b;)Lbr/com/topaz/h0/b$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lbr/com/topaz/h0/b$b;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
