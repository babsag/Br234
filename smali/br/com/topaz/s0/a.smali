.class public abstract Lbr/com/topaz/s0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/s0/b;


# instance fields
.field private a:Lbr/com/topaz/s/a;


# direct methods
.method public constructor <init>(Lbr/com/topaz/s/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/s0/a;->a:Lbr/com/topaz/s/a;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/s0/a;->a:Lbr/com/topaz/s/a;

    invoke-interface {v0, p0}, Lbr/com/topaz/s/a;->a(Lbr/com/topaz/s0/b;)V

    return-void
.end method
