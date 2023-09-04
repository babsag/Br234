.class Lbr/com/topaz/v/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/v/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/v/f;->a(Lbr/com/topaz/v/f$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/v/f$b;

.field final synthetic b:Lbr/com/topaz/v/f;


# direct methods
.method constructor <init>(Lbr/com/topaz/v/f;Lbr/com/topaz/v/f$b;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/v/f$a;->b:Lbr/com/topaz/v/f;

    iput-object p2, p0, Lbr/com/topaz/v/f$a;->a:Lbr/com/topaz/v/f$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/v/f$a;->a:Lbr/com/topaz/v/f$b;

    invoke-interface {v0, p1}, Lbr/com/topaz/v/f$b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onFailure(I)V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/v/f$a;->a:Lbr/com/topaz/v/f$b;

    invoke-interface {v0, p1}, Lbr/com/topaz/v/f$b;->onFailure(I)V

    return-void
.end method
