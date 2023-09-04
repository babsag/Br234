.class public Lbr/com/topaz/v/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbr/com/topaz/v/f$b;
    }
.end annotation


# instance fields
.field private final a:Lbr/com/topaz/v/h;


# direct methods
.method public constructor <init>(Lbr/com/topaz/v/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/v/f;->a:Lbr/com/topaz/v/h;

    return-void
.end method


# virtual methods
.method public a(Lbr/com/topaz/v/f$b;)V
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/v/f;->a:Lbr/com/topaz/v/h;

    new-instance v1, Lbr/com/topaz/v/f$a;

    invoke-direct {v1, p0, p1}, Lbr/com/topaz/v/f$a;-><init>(Lbr/com/topaz/v/f;Lbr/com/topaz/v/f$b;)V

    invoke-virtual {v0, v1}, Lbr/com/topaz/v/h;->a(Lbr/com/topaz/v/h$a;)V

    iget-object p1, p0, Lbr/com/topaz/v/f;->a:Lbr/com/topaz/v/h;

    invoke-virtual {p1}, Lbr/com/topaz/s0/a;->b()V

    return-void
.end method
