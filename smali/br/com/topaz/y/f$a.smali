.class Lbr/com/topaz/y/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/f0/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/y/f;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/y/f;


# direct methods
.method constructor <init>(Lbr/com/topaz/y/f;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/y/f$a;->a:Lbr/com/topaz/y/f;

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

    iget-object v0, p0, Lbr/com/topaz/y/f$a;->a:Lbr/com/topaz/y/f;

    invoke-static {v0}, Lbr/com/topaz/y/f;->a(Lbr/com/topaz/y/f;)Lbr/com/topaz/l/f0;

    move-result-object v0

    invoke-interface {v0, p1}, Lbr/com/topaz/l/f0;->a([B)V

    return-void
.end method
