.class Lbr/com/topaz/h0/a$a;
.super Landroid/os/FileObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/h0/a;->a(Ljava/lang/String;Lbr/com/topaz/h0/a$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/h0/a$b;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lbr/com/topaz/h0/a;


# direct methods
.method constructor <init>(Lbr/com/topaz/h0/a;Ljava/lang/String;ILbr/com/topaz/h0/a$b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/h0/a$a;->c:Lbr/com/topaz/h0/a;

    iput-object p4, p0, Lbr/com/topaz/h0/a$a;->a:Lbr/com/topaz/h0/a$b;

    iput-object p5, p0, Lbr/com/topaz/h0/a$a;->b:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lbr/com/topaz/h0/a$a;->a:Lbr/com/topaz/h0/a$b;

    iget-object p2, p0, Lbr/com/topaz/h0/a$a;->b:Ljava/lang/String;

    invoke-interface {p1, p2}, Lbr/com/topaz/h0/a$b;->a(Ljava/lang/String;)V

    return-void
.end method
