.class public Lcom/combateafraude/passivefaceliveness/controller/attestation/contacts/ContactsInfo;
.super Ljava/lang/Object;
.source "ContactsInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final contacts:[Lcom/combateafraude/passivefaceliveness/controller/attestation/contacts/Contact;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "contacts"
    .end annotation
.end field

.field private final hasChip:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hasChip"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;[Lcom/combateafraude/passivefaceliveness/controller/attestation/contacts/Contact;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/controller/attestation/contacts/ContactsInfo;->hasChip:Ljava/lang/Boolean;

    .line 3
    iput-object p2, p0, Lcom/combateafraude/passivefaceliveness/controller/attestation/contacts/ContactsInfo;->contacts:[Lcom/combateafraude/passivefaceliveness/controller/attestation/contacts/Contact;

    return-void
.end method


# virtual methods
.method public getContacts()[Lcom/combateafraude/passivefaceliveness/controller/attestation/contacts/Contact;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/controller/attestation/contacts/ContactsInfo;->contacts:[Lcom/combateafraude/passivefaceliveness/controller/attestation/contacts/Contact;

    return-object v0
.end method

.method public getHasChip()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/controller/attestation/contacts/ContactsInfo;->hasChip:Ljava/lang/Boolean;

    return-object v0
.end method
