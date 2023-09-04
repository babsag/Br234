.class Lbr/com/topaz/n/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/n/b;->a(Lbr/com/topaz/n/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/n/a$a;

.field final synthetic b:Lbr/com/topaz/n/b;


# direct methods
.method constructor <init>(Lbr/com/topaz/n/b;Lbr/com/topaz/n/a$a;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/n/b$b;->b:Lbr/com/topaz/n/b;

    iput-object p2, p0, Lbr/com/topaz/n/b$b;->a:Lbr/com/topaz/n/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0

    iget-object p1, p0, Lbr/com/topaz/n/b$b;->a:Lbr/com/topaz/n/a$a;

    invoke-interface {p1}, Lbr/com/topaz/n/a$a;->a()V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lbr/com/topaz/n/b$b;->a:Lbr/com/topaz/n/a$a;

    invoke-interface {p1}, Lbr/com/topaz/n/a$a;->a()V

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
