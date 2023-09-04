.class Lbr/com/topaz/g0/f$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/f0/g$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/g0/f;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/g0/f;


# direct methods
.method constructor <init>(Lbr/com/topaz/g0/f;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/g0/f$d;->a:Lbr/com/topaz/g0/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([B)V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/g0/f$d;->a:Lbr/com/topaz/g0/f;

    invoke-static {v0}, Lbr/com/topaz/g0/f;->a(Lbr/com/topaz/g0/f;)Lbr/com/topaz/l/f0;

    move-result-object v0

    invoke-interface {v0, p1}, Lbr/com/topaz/l/f0;->h([B)V

    return-void
.end method
