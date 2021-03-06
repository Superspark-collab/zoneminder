package ONVIF::Media::Types::OSDConfiguration;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}


use base qw(ONVIF::Media::Types::DeviceEntity);
# Variety: sequence
use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %VideoSourceConfigurationToken_of :ATTR(:get<VideoSourceConfigurationToken>);
my %Type_of :ATTR(:get<Type>);
my %Position_of :ATTR(:get<Position>);
my %TextString_of :ATTR(:get<TextString>);
my %Image_of :ATTR(:get<Image>);
my %Extension_of :ATTR(:get<Extension>);

__PACKAGE__->_factory(
    [ qw(        VideoSourceConfigurationToken
        Type
        Position
        TextString
        Image
        Extension

    ) ],
    {
        'VideoSourceConfigurationToken' => \%VideoSourceConfigurationToken_of,
        'Type' => \%Type_of,
        'Position' => \%Position_of,
        'TextString' => \%TextString_of,
        'Image' => \%Image_of,
        'Extension' => \%Extension_of,
    },
    {
        'VideoSourceConfigurationToken' => 'ONVIF::Media::Types::OSDReference',
        'Type' => 'ONVIF::Media::Types::OSDType',
        'Position' => 'ONVIF::Media::Types::OSDPosConfiguration',
        'TextString' => 'ONVIF::Media::Types::OSDTextConfiguration',
        'Image' => 'ONVIF::Media::Types::OSDImgConfiguration',
        'Extension' => 'ONVIF::Media::Types::OSDConfigurationExtension',
    },
    {

        'VideoSourceConfigurationToken' => 'VideoSourceConfigurationToken',
        'Type' => 'Type',
        'Position' => 'Position',
        'TextString' => 'TextString',
        'Image' => 'Image',
        'Extension' => 'Extension',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::Media::Types::OSDConfiguration

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
OSDConfiguration from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * VideoSourceConfigurationToken


=item * Type


=item * Position


=item * TextString


=item * Image


=item * Extension




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Media::Types::OSDConfiguration
   VideoSourceConfigurationToken =>  { value => $some_value },
   Type => $some_value, # OSDType
   Position =>  { # ONVIF::Media::Types::OSDPosConfiguration
     Type =>  $some_value, # string
     Pos => ,
     Extension =>  { # ONVIF::Media::Types::OSDPosConfigurationExtension
     },
   },
   TextString =>  { # ONVIF::Media::Types::OSDTextConfiguration
     Type =>  $some_value, # string
     DateFormat =>  $some_value, # string
     TimeFormat =>  $some_value, # string
     FontSize =>  $some_value, # int
     FontColor =>  { # ONVIF::Media::Types::OSDColor
       Color => ,
     },
     BackgroundColor =>  { # ONVIF::Media::Types::OSDColor
       Color => ,
     },
     PlainText =>  $some_value, # string
     Extension =>  { # ONVIF::Media::Types::OSDTextConfigurationExtension
     },
   },
   Image =>  { # ONVIF::Media::Types::OSDImgConfiguration
     ImgPath =>  $some_value, # anyURI
     Extension =>  { # ONVIF::Media::Types::OSDImgConfigurationExtension
     },
   },
   Extension =>  { # ONVIF::Media::Types::OSDConfigurationExtension
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

