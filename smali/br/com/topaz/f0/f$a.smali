.class Lbr/com/topaz/f0/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/f0/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/f0/f;->a(Ljava/lang/String;Lbr/com/topaz/f0/g$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/f0/g$d;

.field final synthetic b:Lbr/com/topaz/f0/f;


# direct methods
.method constructor <init>(Lbr/com/topaz/f0/f;Lbr/com/topaz/f0/g$d;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/f0/f$a;->b:Lbr/com/topaz/f0/f;

    iput-object p2, p0, Lbr/com/topaz/f0/f$a;->a:Lbr/com/topaz/f0/g$d;

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

    iget-object v0, p0, Lbr/com/topaz/f0/f$a;->a:Lbr/com/topaz/f0/g$d;

    invoke-interface {v0, p1}, Lbr/com/topaz/f0/g$d;->a([B)V

    return-void
.end method
