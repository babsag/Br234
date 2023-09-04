.class Lbr/com/topaz/i/a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/f0/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/i/a;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/i/a;


# direct methods
.method constructor <init>(Lbr/com/topaz/i/a;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/i/a$e;->a:Lbr/com/topaz/i/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a([B)V
    .locals 0

    return-void
.end method

.method public b([B)V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/i/a$e;->a:Lbr/com/topaz/i/a;

    invoke-static {v0}, Lbr/com/topaz/i/a;->a(Lbr/com/topaz/i/a;)Lbr/com/topaz/l/f0;

    move-result-object v0

    invoke-interface {v0, p1}, Lbr/com/topaz/l/f0;->j([B)V

    return-void
.end method
